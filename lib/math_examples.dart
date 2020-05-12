import 'dart:math';

void main() {
  List<int> numbers = [100, 200, 300, 400, 250];

  //1.최댓값 최솟값
  int maxValue = max(numbers[0], numbers[1]);
  int minValue = min(numbers[2], numbers[3]);
  print('max(100,200) is $maxValue');
  print('min(300,400) is $minValue');
  /// max, min의 함수 원형을 보면 external 함수임
  /// 다트가 아니라 C++과 같은 좋은 저수준 언어로 구현되어있음을 뜻함
  /// 반환값은 T로 되어있는데, 제네릭을 사용하여 int를 넣으면 int, double을 넣으면 double로 나와서 편함
  /// 다트는 모든것이 객체로 되어있기 때문에 가능!

  //2.제곱근
  double squareRooted = sqrt(numbers[4]);
  print('sqrt(250) is $squareRooted');

  //3.난수 발생
  List<int> randomNumbers = _makeRandomNumbers(10, 8);
  print('random numvers(0..9) is $randomNumbers');

  //4.반올림은 math패키지 아님
  double doubleValue = 500.51;
  int rounded = doubleValue.round();
  print('500.51 rounds $rounded');
}

List<int> _makeRandomNumbers(int max, int counts) {
  Random random = Random();
  List<int> res = List();
  for(int i=0; i<counts; ++i) {
    res.add(random.nextInt(max)); //0과 max-1 사이
  }
  return res;
}