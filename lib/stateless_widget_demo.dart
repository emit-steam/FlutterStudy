import 'package:flutter/material.dart';

void main() => runApp(MaterialApp( //MaterialApp 위젯 만들고
  title: 'Stateless Widget Demo',
  home: Scaffold( // 위젯의 몸체
    appBar: AppBar(title: Text("Stateless 위젯 데모")), //앱 제목
    body: _FirstStatelessWidget(), // 몸체
  ),
));


class _FirstStatelessWidget extends StatelessWidget { //한번 보여주고나면 갱신 불가능
  @override
  Widget build(BuildContext context) { // 내가 원하는 위젯 반환 
    return Text('이것은 stateless 위젯입니다.');
  }
}