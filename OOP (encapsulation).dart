class BankAccount{
  String Name;
  String FamilyName;
  double _balance;
  BankAccount( this.Name, this.FamilyName,this._balance){
    if(this._balance<0){
        throw ArgumentError("please enter a correct balance");
    }
  }
  BankAccount.empty():
    this.Name="",
    this.FamilyName="",
    this._balance=0;
  
  void deposit(int money){
    this._balance=this._balance+money;

  }
  void withdraw(int money){
    if(money<=_balance){
        this._balance=this._balance-money;
    }
    else{
        print('you withdrawing more than you have');
    }
  }
     String get name{
        return this.Name;
    }
       String get familyName{
        return this.FamilyName;
    }
    double get Balance{
        return this._balance;
    }
    void showInfo(){
       print("Name: ${this.Name}");
              print("Family Name: ${this.FamilyName}");
       print("balance: ${this._balance}");

    }

  }



void main(){
    BankAccount user=BankAccount("Mokrane","Ferhani",-1000);
    print(user.familyName);
    print(user.name);
    print(user.Balance);
    user.withdraw(1000000);
    print(user.Balance);
    user.deposit(2000);
    print(user.Balance);
    user.showInfo();


}