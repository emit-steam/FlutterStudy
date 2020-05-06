void main() {
  // 1. 타입 테스트 연산자
  var account = Account('111-222-33-01', 50000);
  if (account is Account) {
    String name = account.accountNumber;
    int amount = (account as Account).balance; // 불필요한 캐스팅
    print('account name is $name, amount is $amount');
  }

  /// is : 객체 타입이 특정 타입이면 true
  /// is! : 객체가 특정 타입이면 false
  /// as : 타입을 강제로 형변환

  // 2. if null 연산자
  String loginAccount = null;
  String playerName =
      loginAccount ?? 'Guest'; // loginAccount가 null 이면 'Guest' 반환
  print('Login Player is $playerName');

  // 3. 캐스케이드 연산자
  // 동일한 객체로 다수의 메서드 호출이 연속적으로 이뤄지는 경우 유용
  Account account2 = Account('222-333-33-01', 60000)
    ..deposit(5000)
    ..transfer(account, 10000)
    ..withdraw(5000);
  print('account2 balance is ${account2.balance}');

  //4. 조건적 멤버 접근 연산자
  // ?. : 객체가 null 이 아닐때만 멤버의 값을 반환, null이면 null반환
  Account account3 = Account(null, 6000);
  print('account3 is ${account3?.accountNumber}');
}

class Account {
  String accountNumber;
  int balance;

  Account(this.accountNumber, this.balance); // 생성자

  bool withdraw(int amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    }
    return false;
  }

  bool deposit(int amount) {
    balance += amount;
    return true;
  }

  bool transfer(Account dest, int amount) {
    if (balance > amount) {
      balance -= amount;
      dest.deposit(amount);
      return true;
    }
    return false;
  }
}
