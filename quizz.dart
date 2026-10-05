import "dart:io";

void main(){
    var decide = true;
 List<String> questions=[
"What is the only planet in our solar system known to support life?",
"Who painted the Mona Lisa?",
"In which country would you find the ancient city of Petra?",
"What is the chemical symbol for gold?"
];
List<List<String>> proposition=[
 ["Mars","Venus","Jupiter","Earth"],
 ["Vincent van Gogh", "Pablo Picasso", "Leonardo da Vinci", "Michelangelo"],
 ["Egypt", "Jordan", "Greece", "Turkey"],
 ["Go", "Gd", "Au", "Ag"],

];
List<String> answers=[
"Earth",
"Leonardo da Vinci",
"Jordan",
"Au"
];
int score=0;
 int r=1;
 var percentage;
 int i=0;
while(decide){
   
    
    int counter=1;
    
 print("========== QUIZ GAME ==========");
 print("Question $r");
 print(questions[i]);
 for (int y=0;y<proposition[i].length;y++){
    print("$counter. ${proposition[i][y]}");
    counter++;
 }
 print("Your answer: ");
 int answer=int.parse(stdin.readLineSync()!);
 if (answer>proposition[i].length || answer<1){
    print("Invalid option. Please try again.");

 }
 else{
 if (proposition[i][answer-1]==answers[i]){
    score=score+1;
    }
 if(r==questions.length){
 print("========== RESULTS ==========");
 var ScorePercentage=((score/questions.length)*100).toInt();
print("Score: $score/${questions.length}");
print("Percentage: $ScorePercentage%");
print("=============================");
decide=false;
 }
 i++;
 r++;
 }
 

}

}