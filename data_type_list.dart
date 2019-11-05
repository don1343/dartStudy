void main() {
  var list1 = [1, 2, 3, 'hello', false];

  list1[1] = 5;
  list1[2] = 'ds';

  print(list1);  // [1, 5, ds, hello, false]

  var list2 = const[1, 2, 3, 'world', true];

  // list2[2] = 4;

  print(list2);  // UnsupportedError (Unsupported operation: Cannot modify an unmodifiable list)

  var list3 = new List();

  print(list3);

  print(list1.length);  // 5

  list1.add('a');  // 增加项目
  print(list1);  // [1, 5, ds, hello, false, a]

  list1.insert(2, 99);  // 从第几个索引插入项目
  print(list1);  // [1, 5, 99, ds, hello, false, a]

  list1.remove(5);  // 移除某一项
  print(list1);  // [1, 99, ds, hello, false, a]

  list3.clear();  // 清空数组
  print(list3);  // []

  print(list1.indexOf(1));  // 是否包含某一项 0

  list1.forEach(print);
}