import 'dart:io';

void main() {
  stdout.write('Enter name? '); // print() 함수와 동일
  String input = stdin.readLineSync(); // stdin.readLineSync() 호출시 사용자 입력 받을 수 있음
  //  숫자 형태의 데이터를 원하면 int.parse() 메서드 호출해서 변환 가능
  print('Hello $input');


}