# 로컬 웹 서버 스크립트 (기본 포트: 8000)
$port = 8000
$root = $PSScriptRoot

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")

try {
    $listener.Start()
} catch {
    Write-Host "포트 $port 이(가) 사용 중입니다. 다른 포트(8080)로 시도합니다..." -ForegroundColor Yellow
    $port = 8080
    $listener = New-Object System.Net.HttpListener
    $listener.Prefixes.Add("http://localhost:$port/")
    $listener.Start()
}

Write-Host "==========================================================" -ForegroundColor Green
Write-Host " 로컬 웹 서버가 성공적으로 시작되었습니다!" -ForegroundColor Green
Write-Host " 주소: http://localhost:$port" -ForegroundColor Cyan
Write-Host " 이 창을 닫으면 서버가 종료됩니다." -ForegroundColor Yellow
Write-Host "==========================================================" -ForegroundColor Green

# 브라우저 자동 실행
Start-Process "http://localhost:$port"

while ($listener.IsListening) {
    try {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        $path = $request.Url.LocalPath.TrimStart('/')
        if ([string]::IsNullOrEmpty($path)) {
            $path = "index.html"
        }
        $decodedPath = [System.Uri]::UnescapeDataString($path)
        $filePath = Join-Path $root $decodedPath

        if (Test-Path -LiteralPath $filePath -PathType Leaf) {
            $bytes = [System.IO.File]::ReadAllBytes($filePath)
            $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
            $mime = "application/octet-stream"
            switch ($ext) {
                ".html" { $mime = "text/html; charset=utf-8" }
                ".htm"  { $mime = "text/html; charset=utf-8" }
                ".js"   { $mime = "application/javascript; charset=utf-8" }
                ".css"  { $mime = "text/css; charset=utf-8" }
                ".glb"  { $mime = "model/gltf-binary" }
                ".gltf" { $mime = "model/gltf+json" }
                ".png"  { $mime = "image/png" }
                ".jpg"  { $mime = "image/jpeg" }
                ".jpeg" { $mime = "image/jpeg" }
            }
            $response.ContentType = $mime
            $response.AddHeader("Access-Control-Allow-Origin", "*")
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            $response.StatusCode = 404
        }
        $response.OutputStream.Close()
    } catch {
        # 요청 처리 중 예외 발생 시 무시하고 계속 대기
    }
}
