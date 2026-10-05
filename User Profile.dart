import 'dart:io';
void main(){
var  decision=true;
Map<String,Map<String,dynamic>> contacts={
 "Mokrane":{
  "age":25,
  "city":"boumerdes",
  "email":"mokraneferhani@gmail.com"
 },
 "Houria":{
    "age":30,
    "city":"boumerdes",
    "email":"houriaferhani@gmail.com"
 },
 "Amina":{
  "age":28,
  "city":"boumerdes",
  "email":"aminaferhani@gmail.com"
 }

};

while(decision){
 print("========== USER PROFILE SYSTEM ==========");
print("1. Show all users");
print("2. Show user profile");
print("3. Add user");
print("4. Update user");
print("5. Delete user");
print("6. Exit");

print("==========================================");
print("Choose an option:");
int choice=int.parse(stdin.readLineSync()!);
switch(choice){
    case 1:
    for(var item in contacts.entries){
        print("${item.key} : ${item.value}");
    }
    break;
    case 2:
    print("Enter a username: ");
    String name=stdin.readLineSync()!;
    if(contacts.containsKey(name)){
        print(contacts[name]);
    }
    else{
        print("User does not exist.");
    }
    break;
    case 3:
    print("Enter a name: ");
    String name=stdin.readLineSync()!;
    print("Enter an age: ");
    String age=stdin.readLineSync()!;
    print("Enter a city: ");
    String city=stdin.readLineSync()!;
    print("Enter an email: ");
    String mail=stdin.readLineSync()!;
    contacts[name]={"age":age,"city":city,"email":mail};
    break;
    case 4:
    print("Enter a username: ");
    String name=stdin.readLineSync()!;
    if(contacts.containsKey(name)){
    var decide2=true;
    while(decide2){
    print("What would you like to update?");
    print("1. City");
    print("2. Email");
    print("3. Age");
    print("4. Quit");
    print("Choose an option:");
    int choice2=int.parse(stdin.readLineSync()!);
    switch(choice2){
        case 1:
        print("Enter the new city: ");
        String cityChoice=stdin.readLineSync()!;
        contacts[name]!["city"]=cityChoice;
        break;
        case 2:
        print("Enter the new email: ");
        String mailChoice=stdin.readLineSync()!;
        contacts[name]!["email"]=mailChoice;
        break;
        case 3:
        print("Enter the new age: ");
        int ageChoice=int.parse(stdin.readLineSync()!);
        contacts[name]!["age"]=ageChoice;
        break;
        case 4:
        decide2=false;
        break;
        default:
        print("Invalid option. Please try again.");
    }
    }
    }
    else{
        print("User does not exist.");
    }
    break;
    case 5:
    print("Enter a username: ");
    
    String name=stdin.readLineSync()!;
    if(contacts.containsKey(name)){
    contacts.remove(name);
    }
    else{
        print("User does not exist.");
    }
    break;
    case 6:
    print("Thank you for using our product!");
    decision=false;
    break;
    default:
    print("Invalid option. Please try again.");



}



}


}