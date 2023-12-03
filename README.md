# To-infinity_assignment
## To-infinity 최종 개발 과제_이예슬

Navbar의 요소를 선택하면 각각 [화면 클릭 횟수 기록 화면, 한국과 미국동부의 시간 화면]이 보입니다.

### 1. 화면 클릭 횟수 기록 화면

- 상태를 다른 위젯에게 쉽게 전달할 수 있도록 하는 provider를 이용하여 구현하였습니다.
- 화면의 클릭한 부분을 감지하여 효과를 부여하고 싶어 InkWell를 사용하였습니다.
- 재사용성과 기능별로 class를 구분하기 위해 계산하는 Count 클래스는 Utils/Count.dart에 구분해놓았습니다.

### 2. 한국과 미국동부의 시간 화면
- flutter의 timezone을 사용하여 미국 동부와 한국 시간을 import 하였으며 시계는 componet/country_clock_view.dart에 구현하였습니다.
- clock_page에서 해당 나라의 버튼을 누르면 selectClockCountry로 getLocation()안에 들어갈 도시 이름을 전달합니다.
- selectClockCountry에 따라 해당 나라의 시간이 화면에 그려집니다.
<hr>
<img src="https://github.com/yeaseul7/To-infinity_assignment/assets/104067367/1242e03f-8f90-4901-84db-10f6ca0d2c4f" width="200" height="400"/> &nbsp
<img src="https://github.com/yeaseul7/To-infinity_assignment/assets/104067367/eea707aa-3ac2-4e7c-bc58-1eb65b75a9c6" width="200" height="400"/>&nbsp
<img src="https://github.com/yeaseul7/To-infinity_assignment/assets/104067367/5947243e-b99a-4ef5-b98f-82a94eca6cb0" width="200" height="400"/>&nbsp
<img src="https://github.com/yeaseul7/To-infinity_assignment/assets/104067367/5bd0a9e0-b7ad-48a4-bb0a-97bb7be74dca" width="200" height="400"/>&nbsp

<hr>

### 📦 directory tree


📦 lib<br>
  ┣ 📂 component<br>
  ┃  ┣ 📜 country_choose_button.dart<br>
  ┃  ┣ 📜 country_clock_view.dart<br>
  ┃  ┗ 📜 navigation_destination.dart<br>
  ┣ 📂 screen<br>
  ┃  ┣ 📜 clock_page.dart<br>
  ┃  ┗ 📜 screen_click_page.dart<br>
  ┣ 📂 styles<br>
  ┃  ┗ 📜 app_style.dart<br>
  ┣ 📂 utils<br>
  ┃  ┗ 📜 count.dart<br>
  ┗ 📜 main.dart<br>



