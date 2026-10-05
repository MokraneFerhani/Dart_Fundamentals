import "dart:io";
void show(List <Map<String,dynamic>> books){
 if(books.isNotEmpty){
     for(var item in books){
    print("Title: ${item["title"]}");
    print("Author: ${item["author"]}");
    print("Borrowed: ${item["borrowed"]}");
    print("----------------------------");
 }}
 else{
    print("There are no books.");
 }
}
void main(){
List<Map<String,dynamic>> books=[
{"title": "The Hobbit",
  "author": "J.R.R. Tolkien",
  "borrowed": false}];
  var decision=true;

 
  while (decision) {

    print("===== LIBRARY MANAGEMENT SYSTEM =====");
    print("");
    print("1. Show books");
    print("2. Add book");
    print("3. Borrow book");
    print("4. Return book");
    print("5. Remove book");
    print("6. Clear library");
    print("7. Exit");
    print("");
    print("Choose an Option: ");

    int choice=int.parse(stdin.readLineSync()!);
    switch(choice){
        case 1:
        show(books);
     

 break;
  case 2:
  print("How many books do you want to add? ");
 int value=int.parse(stdin.readLineSync()!);
 for(int i=0;i<value;i++){
 print("Enter the book title: ");
  String book=stdin.readLineSync()!;
 print("Enter the author: ");
   String author=stdin.readLineSync()!;

 Map<String,dynamic> mapBook={"title":book,"author":author,"borrowed":false};
 books.add(mapBook);}
 break;
 case 3:
 if(books.isNotEmpty){
int i=1;
for(var item in books){
    print("$i. ${item['title']}");
    i++;
  }  

 print("Choose a book to borrow: ");
int choose=int.parse(stdin.readLineSync()!);
if(choose<1 || choose >books.length){
    print("Invalid choice. Please try again.");
}
else{
books[choose-1]["borrowed"]=true;
}


}
else{
    print("There are no books.");
}

break;
case 4:
if(books.isNotEmpty){
int i=1;
for(var item in books){
    print("$i. ${item['title']}");
    i++;
  }  

 print("Choose a book to return: ");
int choose=int.parse(stdin.readLineSync()!);
if(choose<1 || choose >books.length){
    print("Invalid choice. Please try again.");
}
else{
books[choose-1]["borrowed"]=false;
}


}
else{
    print("There are no books.");
}


break;
case 5:
if(books.isNotEmpty){

int i=1;

  for(var item in books){
    print("$i. ${item['title']}");
    i++;
  }
print("Enter the book number to remove: ");
int choose=int.parse(stdin.readLineSync()!);
if(choose<1 || choose >books.length){
 print("Invalid choice. Please try again.");}

else{books.remove(books[choose-1]);}

}
else{
    print("There are no books.");
}
break;
case 6:
books.clear();
break;
case 7:
print("Thank you for using our product!");
decision=false;
break;
default:
print("Invalid option. Please try again.");

    }


    // Your code here
  }

    
}