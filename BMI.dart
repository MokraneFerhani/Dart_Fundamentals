import 'dart:io';
void main(){
    print("Enter your height: ");
    double? height=double.parse(stdin.readLineSync()!);
    print("Enter your weight: ");
    double? weight=double.parse(stdin.readLineSync()!);
    var BMI=weight/(height*height);
    if(BMI<18.5){
        print("You are underweight.");
    }
     if(BMI>=18.5 &&  BMI<25){
        print("Normal weight.");
    }
    if(BMI>25){
        print("You are overweight.");
    }
    print("Your height is $height");
    print("Your weight is $weight");
}