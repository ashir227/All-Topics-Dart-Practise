void main() {
  List numbers = [22,55,33,77];

int smallest = numbers.reduce((a, b) => a < b ? a : b);
int greatest = numbers.reduce((a, b) => a > b ? a : b);
print("Smallest: $smallest");
print("Greatest: $greatest");
}