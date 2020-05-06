void main() {
  // 1. 문자열
  String str1 = 'flutter';
  String str2 = 'google';
  String plus = str1 + ' ' + str2;
  int len = plus.length;
  print(plus + ' => length : $len');


  // 2. 부울형
  bool a = true;
  bool b = false;
  bool chk = a && b;
  print('chk is $chk');


  // 3. 동적타입(var)
  var strLen = len; //숫자형
  var text = str1; //문자형
  var check = chk; //부울형
  var variable = text; //var형
  print('$strLen, $text, $check, $variable');


  // 컴파일 오류(보너스)
  //variable = chk;
  //print('$variable');

  // 동적타입 var >> 요거는 진정한 의미의 동적타입 X, 할당을 통해 한번 타입 결정되면 그뒤로는 타입 변경 불가능
  // 동적타입 dynamic 은 계속 타입 변경 가능
}
