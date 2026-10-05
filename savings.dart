import 'dart:io';

void main(){
  print("Enter your income: ");
  final double income=double.parse(stdin.readLineSync()!);
  print("Enter your rent: ");
  final double rent=double.parse(stdin.readLineSync()!);
  print("Enter your food expenses: ");
  final double food=double.parse(stdin.readLineSync()!);
  print("Enter your transport expenses: ");
  final double transport=double.parse(stdin.readLineSync()!);
  print("Enter your other expenses: ");
  final double expenses=double.parse(stdin.readLineSync()!);
  double totalExpenses=rent+food+transport+expenses;
  double remain=income-totalExpenses;
  double savingPercentage=(remain/income)*100;
  String savingFinal=savingPercentage.toStringAsFixed(2);
  print("========== FINANCE REPORT ==========");
  print("Income: $income");
  print("Total Expenses: $totalExpenses");
  print("Remaining: $remain");
  print("Saving Rate: $savingFinal%");
  if(savingPercentage>= 20){
    print("Good saving!");
  }
  else{
    print("Bad saving.");
  }

}