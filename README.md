# 🌌 A-Frame 3D Space & Creatures Project

> A-Frame(WebXR)을 활용하여 웹 브라우저에서 즐길 수 있는 3D 우주 공간 및 생물 모델 인터랙티브 웹 프로젝트입니다.

---

## 🔗 배포 링크 (Live Demo)
* **Vercel 배포 주소**: [여기에 Vercel 배포 링크를 붙여넣어 주세요]
* **GitHub 저장소**: https://github.com/keumsu2007-bot/sujeong-project

---

## 📖 프로젝트 소개
이 프로젝트는 웹 표준 3D 라이브러리인 **A-Frame**을 기반으로 구축되었습니다.  
광활한 우주 공간 속 별무리(Starfield)를 동적으로 생성하고, 정밀한 3D 동물/곤충 모델(GLB)들을 배치하여 웹상에서 실시간으로 3D 그래픽을 탐색하고 감상할 수 있습니다.

---

## ✨ 주요 기능 및 특징
1. **3D 가상 우주 환경 구축**
   - 구면 좌표계(Spherical Coordinates)를 활용하여 500개의 별(Starfield)을 무작위로 생성 및 렌더링
   - 깊이감 있는 우주 배경 연출
2. **고품질 3D 모델(GLB) 렌더링**
   - **나비 (Butterfly)** 3D 모델
   - **다람쥐 (Squirrel)** 3D 모델
   - **모기 (Mosquito)** 3D 모델
3. **크로스 플랫폼 지원**
   - 별도의 프로그램 설치 없이 크롬, 엣지, 사파리 등 모던 웹 브라우저에서 바로 구동
4. **로컬 개발용 웹 서버 스크립트 내장**
   - CORS 문제 없이 3D 에셋을 불러올 수 있도록 로컬 HTTP 서버 자동 구동 지원

---

## 🛠️ 기술 스택 (Tech Stack)
* **Frontend**: HTML5, JavaScript
* **3D Framework**: [A-Frame (v1.6.0)](https://aframe.io/) / WebGL / Three.js
* **3D Asset Format**: GLTF / GLB Binary
* **Server (Local)**: PowerShell HTTP Server
* **Deployment**: Vercel, GitHub

---

## 📁 파일 구조 (File Structure)
```text
├── index.html            # 메인 A-Frame 3D 웹 페이지
├── 나비.glb              # 나비 3D 모델 에셋
├── 다람쥐.glb            # 다람쥐 3D 모델 에셋
├── 모기.glb              # 모기 3D 모델 에셋
├── server.ps1            # 로컬 웹 서버 구동 PowerShell 스크립트
├── 202601993 금수정.bat  # 원클릭 로컬 실행 배치 파일
└── README.md             # 프로젝트 소개 문서
```

---

## 💻 로컬(내 컴퓨터)에서 실행하는 방법
1. 저장소를 클론하거나 다운로드합니다.
2. 폴더 내 `202601993 금수정.bat` 파일을 더블 클릭하여 실행합니다.
3. 로컬 서버가 시작되며 기본 브라우저(`http://localhost:8000`)가 자동으로 열립니다.

---

## 👤 제작자
* **이름**: 금수정
* **학번**: 202601993
* **GitHub**: [@keumsu2007-bot](https://github.com/keumsu2007-bot)
