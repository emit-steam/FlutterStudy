
void main() {
  print("Hello Dart");

  // 1. 주석
  /*
   요것도 주석
   */
  ///
  ///요것도 주석
  ///
  ///


  // 2. 변수
  int num1 = 100;
  double num2 = 3.14;
  num num3 = 100; // num 은 정수도 담고
  num num4 = 3.14; // 실수도 담을 수 있음

  double sum1 = num1 + num2;
  //int sum2 = num1 + num2;

  print(sum1);

  num sum3 = num3 * num4;
  print(sum3);


  // 3. 문자열
  String text = 'Carpe diem, quam minimum credula postero';
  String myName = "yudong";
  String hello = 'Hello, ${myName}';
  print(text.substring(0, 10));
  print(hello);

}