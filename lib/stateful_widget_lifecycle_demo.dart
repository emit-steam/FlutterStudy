import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Stateful 위젯 데모', // app 제목
      home: Scaffold(
        // app 위젯의 몸체
        appBar: AppBar(title: Text('Stateful 위젯 데모')), // 앱바 타이틀
        body: _MyStatefulWidget(), // 요기를 나만의 위젯으로 교체하면서 앱 화면을 만들어
      ),
    ));

class _MyStatefulWidget extends StatefulWidget {
  // StatefulWidget은 상태를 가짐, 고정부
  // 상태를 생성하는 createState() 구현

  // StatefulWidget.createState() : 상태를 생성
  @override
  State<StatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<_MyStatefulWidget> {
  //State<_MyStatefulWidget> 를 상속하는 클래스, 변동부
  // _MyStatefulWidget 의 상태를 담당 (변동부)
  // control + O  생명주기 추가 시작
  String _buttonState;

  // mounted 변수가 true가 됨 : 화면에 위젯이 부착된 상태

  // 상태를 초기화 할 수 있음. 한번만 호출됨. (짱유용) 보통 변수 초기화할때 사용
  @override
  void initState() {
    super.initState();
    print('initState() : 기본값을 설정합니다');

    _buttonState = 'OFF';
  }

  // 상태 객체의 의존성이 변경되면 호출
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies() 호출됨');
  }

  // (필수) 위젯을 화면에 표시하는 메서드, 화면에 표시할 위젯을 반환해야함. setState() 메서드가 호출되면 언제든지 재실행 가능
  @override
  Widget build(BuildContext context) {
    print('build() 호출됨');
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('버튼을 누르세요'),
          onPressed: _onClick,
        ),
        Row(
          children: <Widget>[
            Text('버튼 상태 : '),
            Text(_buttonState) // 요렇게 해놓음으로써 _buttonState 만 변경했는데 화면이 자동으로 갱신됨 : 선언적 프로그래밍 -> 개발자는 ui가 아닌 핵심 로직에만 집중 가능
          ],
        )
      ],
    );
  }

  void _onClick() {
    print('_onClick() 호출됨');

    setState(() { // 생명주기에서 따로 메소드 있는데, 실제 사용할때는 화면 갱신할 필요 있을때 실행하면 됨
      print('setState() 호출됨');
      if (_buttonState == 'ON') {
        _buttonState = 'OFF';
      } else {
        _buttonState = 'ON';
      }
    });
  }

  // 위젯의 설정이 변경될때 호출
  @override
  void didUpdateWidget(_MyStatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget() 호출됨');
  }

  // 위젯의 상태를 갱신. 화면 갱신할때 호출해. 이 메서드를 실행하면 위젯을 처음부터 다시 만들지만 initState() 는 호출하지 않음 (짱유용)
  @override
  void setState(fn) {
    super.setState(fn);
    print('setState() 호출됨');
  }

  // 상태 객체가 위젯트리에서 제거됨. 경우에 따라 다시 위젯트리에 추가 될 수 있음.
  @override
  void deactivate() {
    super.deactivate();
    print('deactivate() 호출됨');
  }

  // 상태 객체가 위젯트리에서 완전 제거됨. 더이상 상태객체 재사용 불가
  @override
  void dispose() {
    super.dispose();
    print('dispose() 호출됨');
  }

//mounted가 false로 설정됨 : 최종적으로 위젯이 화면에서 탈착됨
}
