import 'dart:io';

class Student {
  String name;
  double marks;

  Student(this.name, this.marks);

  void show() {
  
    print("Name: $name | Marks: $marks");
  }
}

void main() {
  
  List<dynamic> Stud = [];
  Stud.add(Student("Adi", 33));
  Stud.add(Student("momina", 68));
  Stud.add(Student("usaid", 83));
  Stud.add(Student("noman", 40));
  Stud.add(Student("Raza", 78));
    stdout.write("Enter marks :");
  int minmarks = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < Stud.length; i++) {
    if (Stud[i].marks > minmarks ) {
      Stud[i].show();
    }
    
  }

  } 
// Create a list of students
// ✅ Add 5 students (name + marks)
// ✅ Use a loop to print only those students who scored more than 75