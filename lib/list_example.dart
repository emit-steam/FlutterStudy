void main() {

  // 리스트 >> 배열, 같은 데이터 타입을 여러개 저장할 수 있는 자료구조
  
  // 1.다양한 리스트
  List<int> numbers = [100, 200, 300];
  List<int> evens = [2, 4, 6, 8, 10];

  List<String> planets = ['Earth', 'Jupiter', 'Mars', 'Saturn'];
  List<String> otherPlanets = ['Venus', 'Mercury', 'Neptune'];

  // 2.리스트기본
  print('numbers are $numbers');
  print('first number is ${numbers[0]}');
  print('last number is ${numbers[numbers.length -1]}');

  for(int each in evens) {
    print('each even number is $each');
  }

  // 3.리스트 활용
  List<int> evenFromZero = [0, ...evens];
  print(evenFromZero);
  List<String> allPlanets = planets + otherPlanets;
  print('App planets are $allPlanets');
}
