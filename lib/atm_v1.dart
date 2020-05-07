void main() {
  // 1.계좌생성
  Account account1 = new Account('111-111-1', 20000);
  Account account2 = new Account('222-222-2', 5000);

  // 2.잔고확인
  print('account1 has ${account1.balance}');
  print('account2 has ${account2.balance}');

  // 3.금액인출
  account1.withdraw(7000);
  print('account1 has ${account1.balance} (7000 is withdraw)');

  // 4.계좌이체
  account1.transfer(account2, 5000);
  print('account2 has ${account2.balance} (5000 is transfered)');
  print('account1 has ${account1.balance}');

}

class Account {
  String accountNumber;
  int balance;

  Account(this.accountNumber, this.balance);

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