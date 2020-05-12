import 'dart:io';

void main() {
  //1. 새로운 파일 생성하기
  File newFile = File('temp_file.txt');
  newFile.createSync();

  //2.파일 읽기
  File poem = File('poem.txt'); // 파일 미리 생성 안해놓으면 exception
  List<String> lines = poem.readAsLinesSync();
  for (String line in lines) {
    print(line);
  }

  //3.파일 쓰기 (동기 방식)
  File memoFile = File('diary.txt');
  String contents = """  
  2020.07.03 플러터 공부 시작
  
  오늘은 플러터 표준 라이브러리를 공부했다
  안드 활용해서 예제도 실행!
  """;
  // """ : 다중행 문자열
  memoFile.writeAsStringSync(contents);
}