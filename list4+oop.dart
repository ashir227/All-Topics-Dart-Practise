class Student{
  String? name;
  int? rollNo;
  Student(this.name,this.rollNo);
  Stu_info(){
print("Name : $name  | Roll no : $rollNo");

  }
}
void main() {
  List<Student> Students = [];
Student p1 = Student("Ashu", 33);
Student p2 = Student("Meher", 58);
Student p3 = Student("Raano", 11);
Students.add(p1);
Students.add(p2);
Students.add(p3);
 Students.removeWhere((Item) =>Item.rollNo == 58);
for (var S in Students) {
  S.Stu_info();
}
}