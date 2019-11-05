// void main() {
//   print(str('pipi'));
//   print(str('don', gender: '男'));
//   print(str('don', age: 18, gender: '男'));
//   print(str2('don', 18, '男'));
// }

// // String str(String name, int age) {
// //   return 'name = $name, age = $age';
// // }

// // str(name, age) => 'name = $name, age = $age';

// str(String name, { int age = 20, String gender = '男' }) => 'name = $name, age = $age, gender = $gender';
// str2(String name, [ int age, String gender ]) => 'name = $name, age = $age, gender = $gender';

// void main() {
//   var list = ['a', 'b', 'c'];
//   print(listTimes(list, times));
// }

// List listTimes(List list, String times(str)) {
//   for (var i = 0; i < list.length; i++) {
//     list[i] = times(list[i]);
//   }
// }

// String times(str) {
//   return str * 3;
// }

void main() {
  var func = a();

  func();
  func();
  func();
  func();
  func();
}

a() {
  int count = 0;

  return () {
    print(count++);
  };
}