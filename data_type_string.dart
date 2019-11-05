void main() {
  String str1 = 'Hello world';
  print(str1);  //Hello world

  String str2 = '''Hello
                  world''';
  print(str2);
  // Hello
  //                 world

  String str3 = 'Hello \n world';
  print(str3);
  //  Hello 
  //  world

  String str4 = r'Hello \n world';
  print(str4);  // Hello \n world

  print(str1 + 'hhh');  // 字符串拼接 Hello worldhhh
  print(str1 * 2);  // 字符串重复 Hello worldHello world
  print(str1 == str2);  // 判断字符串是否相同 false
  print(str1[2]);  // 字符串下标

  int a = 1;
  int b = 2;
  print('a + b = ${a + b}');  // a + b = 3
  print('a = ${a}');  // a = 1

  print(str1.length);  // 字符串长度 11
  print(str1.isEmpty);  // 字符串是否为空 false
  print(str1.isNotEmpty);  // 字符串是不为空 true

  print(str1.contains('Hello')); // 是否包含 true
  print(str1.substring(0, 3));  // 截取字符串 从第几个到第几个（不包含）
  print(str1.startsWith('H'));  // 以开始 true
  print(str1.endsWith('d'));  // 以结束 true
  print(str1.indexOf('l'));  // 匹配到到第一个字符串到索引（正序） 2
  print(str1.lastIndexOf('d'));  // 匹配到到第一个字符串索引（倒序） 10
  print(str1.toLowerCase());  // 小写
  print(str1.toUpperCase());  // 大写
  print(' hello '.trim());  // 清空格
  print(' hello '.trimLeft());  // 清左边空格
  print(' hello '.trimRight());  // 清右边空格
  print(str1.split(' '));  // 字符串分割为数组
  print(str1.replaceAll('Hello', 'hallo'));  // 替换字符串
}
