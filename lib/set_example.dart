void main() {
  // 1.집합 선언
  // 집합은 리스트와 동일하나, 동일한 값은 허용하지 않음
  // 리스트는 [] 으로 사용, 집합은 {} 로 사용
  Set<int> naturalNumbers = {1,2,3,4,1}; //실제로는 {1,2,3,4}
  Set<String> ids = {'x-3', 'x-2', 'x-1'};

  // 2.집합 사용
  print('numbers are $naturalNumbers');
  print('ids are $ids'); // not sorted
  //print('first number is ${naturalNumbers[0]}'); // index 사용불가

  for(int each in naturalNumbers) {
    print('each number is $each');
  }

  //Set<int> integers = {0} + naturalNumbers; // 불가

  // 3.수학적 집합의 활용
  Set<int> a = {100, 200, 300};
  Set<int> b = {100, 200, 500, 1000};

  print('a union b = ${a.union(b)}');
  print('a intersection b = ${a.intersection(b)}');
  print('a difference b = ${a.difference(b)}');
}