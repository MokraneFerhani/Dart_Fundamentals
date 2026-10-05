import 'dart:io';
void main(){
var  decision=true;
 List <Map<String,dynamic>> tasks=[
  {"title":"learn dart",
   "status":false
  }
 ];



while(decision){
 print("===== TO-DO APP =====");
print("");
print("1. Show tasks");
print("2. Add task");
print("3. Complete task");
print("4. Remove task");
print("5. Clear all tasks");
print("6. Exit");
print("");
print("Choose an option:");
int choice=int.parse(stdin.readLineSync()!);
print("----------------------------");
switch(choice){
    
case 1:
 if(tasks.isNotEmpty){
 for(var item in tasks){
    print("Title: ${item["title"]}");
    print("Status: ${item["status"]}");
    print("----------------------------");
 }}
 else{
    print("There are no tasks.");
 }

 break;
 case 2:
 print("How many tasks do you want to add? ");
 int value=int.parse(stdin.readLineSync()!);
 for(int i=0;i<value;i++){
 print("Enter a task: ");
 String task=stdin.readLineSync()!;
 Map<String,dynamic> mapTask={"title":task,"status":false};
 tasks.add(mapTask);}
 break;


case 3:



if(tasks.isNotEmpty){
int i=1;
for(var item in tasks){
    print("$i. ${item['title']}");
    i++;
  }  

 print("Choose a task you completed: ");
int choose=int.parse(stdin.readLineSync()!);
if(choose<1 || choose >tasks.length){
    print("Invalid choice. Please try again.");
}
else{
tasks[choose-1]["status"]=true;
}


}
else{
    print("There are no tasks.");
}

break;
case 4:
if(tasks.isNotEmpty){

int i=1;

  for(var item in tasks){
    print("$i. ${item['title']}");
    i++;
  }
print("Enter the task number to remove: ");
int choose=int.parse(stdin.readLineSync()!);
if(choose<1 || choose >tasks.length){
 print("Invalid choice. Please try again.");}

else{tasks.remove(tasks[choose-1]);}

}
else{
    print("There are no tasks.");
}
break;
case 5:
tasks.clear();
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