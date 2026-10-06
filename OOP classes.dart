class BankAccount{
  String Name;
  String FamilyName;
  double balance;
  BankAccount(String this.Name,String this.FamilyName,double this.balance);
  void deposit(int money){
    this.balance=this.balance+money;

  }
  void withdraw(int money){
    if(money<=balance){
        this.balance=this.balance-money;
    }
    else{
        print('you withdrawing more than you have');
    }
  }
     String getName(){
        return this.Name;
    }
       String getFamilyName(){
        return this.FamilyName;
    }
    double getBalance(){
        return this.balance;
    }
    void showInfo(){
       print("Name: ${this.Name}");
              print("Family Name: ${this.FamilyName}");
       print("Balance: ${this.balance}");

    }

  }




void main(){
    BankAccount user=BankAccount("Mokrane","Ferhani",20000);
    print(user.getFamilyName());
    print(user.getName());
    print(user.getBalance());
    user.withdraw(1000000);
    print(user.getBalance());
    user.deposit(2000);
    print(user.getBalance());
    user.showInfo();


}