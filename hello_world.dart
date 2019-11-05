void main() {
  var a;
  print(a);  // null

  a = 10;
  print(a);  // 10

  a = 'pipi';
  print(a);  // pipi

  var b = 20;
  print(b);  // 20

  final c = 30;
  // c = 20;  
  // 'c', a final variable, can only be set once.
  // Try making 'c' non-final.
  print(c);

  const d = 50;
  // d = 90;
  // Constant variables can't be assigned a value.
  // Try removing the assignment, or remove the modifier 'const' from the variable.
  print(d);
}