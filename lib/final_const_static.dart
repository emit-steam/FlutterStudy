void main() {
  // 1. final
  // 한번 설정되면 다른 값으로 변경 불가
  // setter는 없고 getter만 있음, 런타임시에도 값 설정 가능
  final String name = "Tony";
  //name = 'Steve';

  // 2. const
  // 상수 선언, 런타임 전에 정해지는 값만 할당 가능
  const int STUDENTS_MAX = 100;
  const double PIE = 3.141592326;

  // 3.static
  // 인스턴스 생성 없이 값 출력 가능
  print('Queue initial capacity is ${Queue.initialCapacity}');
}

class Queue {
  static const initialCapacity = 12;
}