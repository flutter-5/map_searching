# 📌지도 검색앱
Flutter로 제작된 네이버맵 기반 검색앱입니다. 사용자는 지역을 검색해 결과를 받아, 해당 url로 이동가능합니다.

## 📹리드미 시연영상
![지도맵 시연영상](https://github.com/user-attachments/assets/81d7868e-0bdf-4a7a-bf2d-80ca8340acea)


## 1. 기능
- 지역 검색을 통해 검색 결과를 간략히 볼 수있습니다.
- 검색 결과를 클릭하면 해당 url로 이동합니다.

## 2. 데이터 관리
- http를 이용해 JSON 파일에서 데이터를 로드합니다.


## 🛠️ 기술 스택
- __Framework__: Flutter
- __Language__: Dart
- __UI Components__:
  - ListView.sepaerated 를 활용한 동적 목록 생성
  - textfield로 입력처리
  - http: url연동
  - flutter_liverpod: mvvm

## 📂 프로젝트 구조
📦lib<br>
 ┣ 📂data<br>
 ┃ ┣ 📜location.dart<br>
 ┃ ┗ 📜location_repository.dart<br>
 ┣ 📂widget<br>
 ┃ ┣ 📜appbar_textfield.dart<br>
 ┃ ┣ 📜detail.dart<br>
 ┃ ┗ 📜home_list_view.dart<br>
 ┣ 📜home_page.dart<br>
 ┣ 📜home_view_model.dart<br>
 ┗ 📜main.dart<br>