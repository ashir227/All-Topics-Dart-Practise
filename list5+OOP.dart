import 'dart:io';

// Abstract class
class Student extends Grade {
  String? name;
  int? rollNo;

  Student(double marks, this.name, this.rollNo) : super(marks);

  void stdInfo() {
    print("Name: $name | Roll No: $rollNo | Grade: ${getGrade()}");
  }
}

// Grade class that calculates grade from marks
class Grade {
  double marks;

  Grade(this.marks);

  String getGrade() {
    if (marks > 90) {
      return "A+";
    } else if (marks > 80) {
      return "A";
    } else if (marks > 70) {
      return "B";
    } else {
      return "Fail";
    }
  }
}

// Concrete(non Abstract Class) class because abstract class can't be directly instantiated
// class MyStudent extends Student {
//   @override
//   MyStudent(double marks, String name, int rollNo) : super(marks, name, rollNo);
// }

void main() {
  // List of students
  List<Student> students = [];

  // Add student objects to list
  Student s1 = Student(85, "Moon", 1);
  Student s2 = Student(33, "Zia", 2);
  Student s3 = Student(91, "Moid", 3);
  Student s4 = Student(98, "Al", 4);
students.removeWhere((item) =>item.name!.length < 3);
  students.addAll([s1, s2, s3]);

  // Show info for all students
  for (var s in students) {
    s.stdInfo();
  }
}
