import 'bank account V2 (encapsulation).dart';
import 'bank account V3 (override).dart';

class BusinessAccount extends BankAccount{
  BusinessAccount(String Name,String FamilyName,double balance):super(Name,FamilyName,balance);
   @override
  void showInfo() {
    print("this is a busniess account");
  }
}

void main(){
 List<BankAccount> accounts=[
  BusinessAccount("Mokrane", "Ferhani", 20000),
  Saving("Houria", "Ferhani", 1000,2,500),

 ];
 for (var item in accounts){
  item.showInfo();
 }



}
