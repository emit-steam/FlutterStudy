void main() {
  // 1.함수호출
  int a = 100;
  int b = 200;
  int c = _getBigger(a, b);
  print('_getBigger(a,b) = $c');

  // 2.중복호출
  String str = 'apple';
  String addBrace = addSuffix(addPrefix(str, '('), ')');
  print(addBrace);

  // 3.선택인자 (positional optional parameter)
  int num1 = 100;
  int num2 = addNumber(100);
  int num3 = addNumber(100, 20);
  print('num2 = $num2, num3 = $num3');

  // 4.이름있는 인자(named optional parameter)
  String http1 = getHttp('http://naver.com', port: 80);
  String http2 = getHttp('http://localhost');
 // String http3 = getHttp("www.naver.com", 11);
  // 다트는 선택인자에만 이름을 넣을 수 있음
  print(http1);
  print(http2);

}

int _getBigger(int a, int b) {
  if (a >= b) return a;
  return b;
}

String addPrefix(String str, String prefix) => '$prefix $str';

String addSuffix(String str, String suffix) => '$str $suffix';

int addNumber(int num, [int inc = 1]) => num + inc;

String getHttp(String url, {int port = 8080}) {
  return 'get http from $url, port = $port';
}