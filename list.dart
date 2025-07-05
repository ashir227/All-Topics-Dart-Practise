void main() {
  List <String> fruit = ["Apple","Orange","Strawberry"];
  for (var i = 0; i < fruit.length; i++) {
    fruit.removeAt(0);
    fruit.addAll(["pappaya","Layfinger"]);
    print(fruit[i]);
    break;
  }
}