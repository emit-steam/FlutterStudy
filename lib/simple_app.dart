import 'package:flutter/material.dart';

void main() => runApp(MaterialApp( //runApp의 인자로 MaterialApp 만들고
      title: 'Hello Flutter', // 앱 이름
      home: Scaffold(
        // 위젯의 몸체로 Scaffold 위젯 지정
        appBar: AppBar(title: Text('Hello Flutter!')),
        body: Text('Hello Flutter'), // 요기를 나만의 위젯으로 교체하면서 앱 화면 만들어
      ),
    ));


// 화면에 표시되는 무엇 == 위젯
// StatelessWidget 화면 표시용 위젯, 표시된 이후에는 이벤트나 동작이 있어도 내용 변경 불가