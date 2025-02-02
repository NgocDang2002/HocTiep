void main(List<String> args) {
  // Cấu trúc rẽ nhánh trong dart #9 - Beginner | Lập trình Dart
  // Toán tử so sánh trong Dart > < >= <= == != && ||

  // bool isRaining = true;
  // bool isGoingOut;

  // if (isRaining == true) {
  //   isGoingOut = false;
  // } else {
  //   isGoingOut = true;
  // }
// ----------------------------------------
  // var month = 1;
  // var daysInMonth;

  // if (month == 1) {
  //   daysInMonth = 31;
  // } else if (month == 2) {
  //   daysInMonth = 28;
  // } else if (month == 3) {
  //   daysInMonth = 31;
  // } else if (month == 4) {
  //   daysInMonth = 30;
  // } else if (month == 5) {
  //   daysInMonth = 31;
  // } else if (month == 6) {
  //   daysInMonth = 30;
  // } else if (month == 7) {
  //   daysInMonth = 31;
  // } else if (month == 8) {
  //   daysInMonth = 31;
  // } else if (month == 9) {
  //   daysInMonth = 30;
  // } else if (month == 10) {
  //   daysInMonth = 31;
  // } else if (month == 11) {
  //   daysInMonth = 30;
  // } else if (month == 12) {
  //   daysInMonth = 31;
  // } else {
  //   daysInMonth = 'Không hợp lệ';
  // }
// ----------------------------------------
  // var month = 3;
  // var daysInMonth;
  // switch (month) {
  //   case 1:
  //     daysInMonth = 31;
  //     break;
  //   case 2:
  //     daysInMonth = 28;
  //     break;
  //   case 3:
  //     daysInMonth = 31;
  //     break;
  //   case 4:
  //     daysInMonth = 30;
  //     break;
  //   case 5:
  //     daysInMonth = 31;
  //     break;
  //   case 6:
  //     daysInMonth = 30;
  //     break;
  //   case 7:
  //     daysInMonth = 31;
  //     break;
  //   case 8:
  //     daysInMonth = 31;
  //     break;
  //   case 9:
  //     daysInMonth = 30;
  //     break;
  //   case 10:
  //     daysInMonth = 31;
  //     break;
  //   case 11:
  //     daysInMonth = 30;
  //     break;
  //   case 12:
  //     daysInMonth = 31;
  //     break;
  //   default:
  //     daysInMonth = 'Không hợp lệ';
  // }
  // print(daysInMonth);
  // ----------------------------------------

  // var mark = 10;
  // var equal;
  // if (mark >= 9 && mark <= 10) {
  //   equal = 'Đậu';
  // } else if (mark >= 7 && mark <= 8) {
  //   equal = 'Trượt';
  // } else {
  //   equal = 'Không hợp lệ';
  // }
  // print(equal);
  // ----------------------------------------

  var number = 20;
  bool isOk;
  // cách 1:
  // if (number > 30 || number < 0) {
  //   isOk = true;
  // } else {
  //   isOk = false;
  // }
  // cách 2:
  isOk = number > 30 || number < 0 ? true : false;

  print(isOk);
}
