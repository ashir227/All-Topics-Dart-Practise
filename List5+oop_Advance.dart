import 'dart:io';

class Student {
  late String name;
  double? rollNo;
  late double marks;

  Student(this.name, this.rollNo, this.marks);

  String grade() {
    if (marks > 90) 
      return "A+";
     else if (marks > 80) 
      return "A";
     else if (marks > 70) 
      return "B";
     else {
      return "Fail";
    }
  }

  Stud_info() {
    print("Name : $name | Roll no :$rollNo | Grade : ${grade()}");
  }
}
void main() {
  List stu = [];
  String? choise;
  do {
    print("\nEnter student details:");

    stdout.write("Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Roll no: ");
    double rollNo = double.parse(stdin.readLineSync()!);

    stdout.write("Marks: ");
    double? marks = double.parse(stdin.readLineSync()!);
    
    stu.add(Student(name, rollNo, marks));
    print("Student Added!");
    stdout.write("\nAdd another student? (yes/no): ");
    choise = stdin.readLineSync()?.toLowerCase();
   
  } while (choise == "yes" || choise == "y");
  print("All Students");
  for (var s in stu) {
    s.Stud_info();
  }
}