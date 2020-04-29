import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Stateless -> Stateful 위젯 데모', // 앱 이름
  home: Scaffold(
    appBar: AppBar(title: Text('Stateless -> Stateful 위젯데모')), // 앱바 타이틀
    body: _FirstStatefulWidget(), // 몸체
  ),
));

class _FirstStatefulWidget extends StatefulWidget { // statefulWidget은 상태를 가짐
  // 상태를 생성하는 createState() 구현
  @override
  State<StatefulWidget> createState() => _FirstStatefulWidgetState(); // _FirstStatefulWidgetState 반환하도록 함
}

class _FirstStatefulWidgetState extends State<_FirstStatefulWidget> { //State<_FirstStatefulWidget> 를 상속함
  // 내용처럼 _FirstStatefulWidget 클래스의 상태를 담당, 화면에 위젯을 표시하는 build() 메서드를 구현
  @override
  Widget build(BuildContext context) {
    return Text('이것은 stateful 위젯입니다');
  }
}

// Stateful 위젯은 왜 위젯과 상태 2개의 클래스로 분리했을까?
// stateless 위젯은 처음 내용을 화면에 표시할 뿐 내용 변경 불가능, 항상 같은 화면을 가짐
// stateful 위젯은 이벤트에 따라 변경된 내용을 표시할 수 있음
// 플러터는 최대한 고정부와 변동부를 구별하도록 설계되어 있음
// _FirstStatefulWidget 는 고정부, _FirstStatefulWidgetState 가 변동부를 담당함