import "dart:io";
void main(){
var  decision=true;
Map <String,String> Contact={
    "Mokrane":"077883222",
    "Houria":"0543232323",
    "Amina":"0658439843"
};


 while(decision){
print("========== CONTACT SEARCH ==========");
print("1. Add contact");
print("2. Search contact");
print("3. Show all contacts");
print("4. Remove contact");
print("5. Exit");
print("====================================");
print("Choose an option:");
int choice=int.parse(stdin.readLineSync()!);
switch(choice){
    case 1:
    print("Enter a name:");
    String name=stdin.readLineSync()!;
    print("Enter a number:");
    String number=stdin.readLineSync()!;
    Contact[name]=number;
    break;
    case 2:
    print("Enter the name to search for: ");
    String name=stdin.readLineSync()!;
    if(Contact.containsKey(name)){
        print("The number is: ${Contact[name]}");
    }
    else{
        print("Contact does not exist.");
    }
    break;
    case 3:
    for(var contact in Contact.entries){
        print("${contact.key}:${contact.value}");
    }
    break;
    case 4:
    print("Enter the name to remove: ");
    String name=stdin.readLineSync()!;
    Contact.remove(name);
    break;
    case 5:
    print("Thank you for using our product!");
    decision=false;
    break;
    default:
    print("Invalid option. Please try again.");
}

 }


}