import 'dart:convert';
import 'dart:io';

import 'dart:math';

void main() {
  //1.JSON 문자열 파싱하기
  String jsonStr = """
  {"basket" : {
    "apple" : 50,
    "banana" : 10,
    "grape" : 5
   }
  }
  """;

  Map json = jsonDecode(jsonStr);
  Map basket = json["basket"];
  int apples = basket["apple"];
  int bananas = basket["banana"];
  int grapes = basket["grape"];
  print("apple are $apples");
  print("bananas are $bananas");
  print("grapes are $grapes");

  //2.JSON 파일 읽기
  Map basketMap = _readBasketJson('basket.json');
  print('grapes was ${basketMap["grape"]}');

  //3. JSON 파일 쓰기
  basketMap.update('grape', (value) => _getRandomNumber()); //update로 갱신
  File('basket.json').writeAsStringSync(jsonEncode(basketMap)); //쓰기

  Map updated = _readBasketJson('basket.json');
  int grapesNow = updated["grape"];
  print('now grapes are $grapesNow');
}

int _getRandomNumber() {
  return Random().nextInt(100);
}

Map _readBasketJson(String fileName) {
  String contents = File(fileName).readAsStringSync(); //문자열 전달
  print('contents : $contents');
  return jsonDecode(contents); //json파일 읽기
  //jsonDecode는 어떤 클래스에 포함되지 않았기때문에 함수로 불러야함
  //main()도 마찬가지도 메서드가 아니라 함수임 
}