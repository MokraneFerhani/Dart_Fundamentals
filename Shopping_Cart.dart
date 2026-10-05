import 'dart:io';

void main(){
List<String> Items=[];


bool decide=true;
while(decide==true){
print("========== SHOPPING LIST ==========");
print("1. Show items");
print("2. Add item");
print("3. Remove item");
print("4. Check if item exists");
print("5. Clear list");
print("6. Exit");
print("===================================");
print("Choose an option:");
int choice=int.parse(stdin.readLineSync()!);
switch(choice){
 case 1:
 if (Items.length==0){
    print("Your shopping list is empty.");

 }
 else{
    int i=1;
    for (String item in Items){
        print("Item $i: $item");
        i++;
    }

 }
 break;
 case 2 :
  print("Enter the item to add: ");
  String addedItem=stdin.readLineSync()!;
  Items.add(addedItem);
  break;
  case 3:
  print("Enter the item to remove: ");
  String removedItem=stdin.readLineSync()!;
  Items.remove(removedItem);
  break;
  case 4:
  print("Enter the item to search for: ");
  String searchedItem=stdin.readLineSync()!;
  if(Items.contains(searchedItem)){
    print("Item exists.");
  }
  else{
    print("Item does not exist.");
  }
  break;
  case 5:
  Items.clear();
  break;
  case 6:
  print("Thank you for using our app!");
  decide=false;
  break;
  default:
  print("Invalid option. Please try again.");

}
}

}