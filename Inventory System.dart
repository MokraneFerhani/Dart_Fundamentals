import 'dart:io';

void main(){
Map <String,int> mapList={
    "milk":10,
    "egg":20,
    "bread":30
};
var decision=true;
while(decision){
print("========== INVENTORY ==========");
print("1. Show inventory");
print("2. Add product");
print("3. Update quantity");
print("4. Check product");
print("5. Remove product");
print("6. Clear inventory");
print("7. Exit");
print("===============================");
print("Choose an option:");
int choice=int.parse(stdin.readLineSync()!);
switch(choice){
 case 1:
  if (mapList.length==0){
    print('The inventory is empty.'); 
    
  }
  else {
    for (var item in mapList.entries){
        print("${item.key}:${item.value}");
    }
  }
  break;
  case 2:
   print("Enter a product: ");
  String product=stdin.readLineSync()!;
  print("Enter the quantity: ");
  int  price=int.parse(stdin.readLineSync()!);
  mapList[product]=price;
  break;
  case 3:
  print("Enter the product to update: ");
  String product=stdin.readLineSync()!;
  print("Enter the new quantity: ");
  int price=int.parse(stdin.readLineSync()!);
  mapList[product]=price;
  break;
  case 4:
  print("Enter the product to search for: ");
  String searchedItem=stdin.readLineSync()!;
  if(mapList.containsKey(searchedItem)){
    print("Product exists.");
  }
  else{
    print("Product does not exist.");
  }
  break;
  case 5:
  print("Enter the product to remove: ");
  String product=stdin.readLineSync()!;
  mapList.remove(product);
  break;
  case 6:
  mapList.clear();
  break;
  case 7:
  print("Thank you for using our product!");
  decision=false;
  break;
}

}
}