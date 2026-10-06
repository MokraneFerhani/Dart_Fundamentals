abstract class character{
  String name;
  int age;
  character(this.name,this.age);

  void attack();
}
class assasin extends character{
  assasin(String name,int age):super(name,age);
  @override
  void attack(){
   print('attack by assasin');
  }
}
class warrior extends character{
  warrior(String name,int age):super(name,age);
  @override
  void attack(){
   print('attack by warrior');
  }
}


void main(){ 
  character C1=warrior("Mokrane", 25);
  character C2=assasin("houria", 23);
  C1.attack();
  C2.attack();
}