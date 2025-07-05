import 'dart:io';

void main() {
  print("Please Enter the marks of Student");
  int marks = int.parse(stdin.readLineSync()!);
    if (marks>=90) {
      print("Std Grade is A+");
    }
    else if (marks>=80  ){
print("Std Grade is A");
    }
    else if (marks>=70  ){
print("Std Grade is B");
    }
     else if (marks>=60  ){
print("Std Grade is C");
    }
    else{
      print("Student are Fail");
    }
}