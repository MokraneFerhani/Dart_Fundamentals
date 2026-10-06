import 'bank account V2 (encapsulation).dart';

class Saving extends BankAccount{
  double interest;
  double minimumBalance;
  Saving(String Name,String FamilyName,double balance,this.interest,this.minimumBalance):super(Name,FamilyName,balance);

 @override
  void showInfo(){
    print("Name: $Name");
    print("Family Name: $FamilyName");
    print("Balance: $Balance");
    print("Interest: $interest%");
  }


}
class SpecialSaving extends BankAccount{
  double interest;
  SpecialSaving(this.interest):super.empty();
}

void main(){
  Saving user=Saving("Houria", "Ferhani", 200000, 2.4,1000);
  SpecialSaving user2=SpecialSaving(2.4);
  user.familyName;
  user.showInfo();
  user2.showInfo();
}