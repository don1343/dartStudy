void main() {
  num a = 10;
  a = 10.23;
  // print(a);

  // int b = 10;
  // b = 10.3;
  // A value of type 'double' can't be assigned to a variable of type 'int'.
  // Try changing the type of the variable, or casting the right-hand type to 'int'.
  // print(b);

  double c = 10.3;
  c = 10;
  // print(c);

  print(a + c);  // 20.23
  print(a - c);  // 0.23000000000000043
  print(a * c);  // 102.30000000000001
  print(a / c);  // 1.0230000000000001
  print(a ~/ c);  // 1
  print(a % c);  // 0.23000000000000043
  
  print(a.isNaN);  // false
  print(0.0 / 0.0);  // NaN
  print(10.isEven);  // true
  print(11.isOdd);  // true

  print(c.abs());  // 绝对值 10.0
  print(10.3.round()); // 四舍五入 10
  print(10.7.round());  // 四舍五入 11
  print(10.9.floor());  // 向下取整 10
  print(10.4.ceil());  // 向上取整 11
  print(10.5.ceil());  // 向上取整 11
  print(10.3.toInt());  // 转整型
  print(10.toDouble());  // 转浮点
}