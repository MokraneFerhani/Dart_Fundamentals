import 'dart:io';

void main(){
 double balance=200000;
 bool decide=true;
while(decide==true) {
 print("========== ATM ==========");
 print("1. Check Balance");
 print("2. Deposit");
 print("3. Withdraw");
 print("4. Exit");
 print("=========================");
 print("Enter a Number: ");
 int choice=int.parse(stdin.readLineSync()!);
 print("You chose: $choice");
 switch(choice){
  case 1:
  print("Your balance is: $balance");
  break;
  case 2:
  print("Enter your deposit amount: ");
  double deposit=double.parse(stdin.readLineSync()!);
  balance=balance+deposit;
  break;
  case 3:
  print("Enter the amount to withdraw: ");
  double withraw=double.parse(stdin.readLineSync()!);
  balance=balance-withraw;
  break;
  case 4:
  print("Thank you for using our service!");
  decide=false; 
  break;
  default:
  print("Invalid option. Please try again.");
 }
}
}