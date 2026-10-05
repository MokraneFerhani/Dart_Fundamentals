import 'dart:io';
int findLargest(List<int> numbers){
   int max=numbers[0]; 
 for(int i=1;i<numbers.length;i++){
    if(max<numbers[i]){
        max=numbers[i];
    }
  
 }
 return max;

}
int findSmallest(List<int> numbers){
     int min=numbers[0]; 
 for(int i=1;i<numbers.length;i++){
    if(min>numbers[i]){
        min=numbers[i];
    }
  
 }
 return min;
}
int average (List<int> numbers){
    int s=0;
    for(int number in numbers){
     s=s+number;
    }
    return (s/numbers.length).toInt();
}
void main(){
var decide= true;
 List<int> numbers=[];
    while(decide){
  print("========== NUMBER ANALYZER ==========");
 print("1. Enter numbers");
print("2. Show all numbers");
print("3. Show largest number");
print("4. Show smallest number");
print("5. Show average");
print("6. Count even numbers");
print("7. Count odd numbers");
print("8. Exit");
print("=====================================");
print("Choose an option:");
int choice=int.parse(stdin.readLineSync()!);
switch (choice) {

  case 1:
  print("How many numbers do you want to enter? ");
  int howMany=int.parse(stdin.readLineSync()!);
  for (int i=0;i<howMany;i++){
  print("Enter a number: ");
  int number=int.parse(stdin.readLineSync()!);
   numbers.add(number);

  }
  
     break;

  case 2:
    if(numbers.length==0){
    print("The list is empty.");
    break;
  }
  else {
  for(int i in numbers){
    print(i);
  }
    break;}

  case 3:
   if(numbers.length==0){
    print("The list is empty.");
    break;
  }
  else{
    var result=findLargest(numbers);
    print("The largest number is: $result");
    break;}

  case 4:
   if(numbers.length==0){
    print("The list is empty.");
    break;
  }
  else {
  var result=findSmallest(numbers);
  print("The smallest number is: $result");  
  break;}

  case 5:
   if(numbers.length==0){
    print("The list is empty.");
    break;
   }
   else{
  var result=average(numbers);
  print("The average is: $result");
    break;}

  case 6:
   if(numbers.length==0){
    print("The list is empty.");
    break;
  }
  else {
   int i=0;
   for(int number in numbers){
    if(number.isEven){
        i++;
    }


   }
       print("The number of even numbers is: $i");

    break;}

  case 7:
   if(numbers.length==0){
    print("The list is empty.");
    break;
  }
  else{
   int i=0;
   for(int number in numbers){
    if(number.isOdd){
        i++;
    }}
    print("The number of odd numbers is: $i");
    break;}
 
  case 8:
   print("Thank you for using our product!");
   decide=false;
    break;

  default:
   print("Invalid option. Please try again.");
    break;
}


    }
}