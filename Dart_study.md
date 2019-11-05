[TOC]

### 变量

- 使用`var`声明变量，可赋予不同类型的值
- 未初始化时，默认值为`null`
- 使用`final`声明一个只能赋值一次的变量

### 常量

- 使用`const`声明常量
- 使用`const`声明的必须是编译期常量

```dart
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
```

### 数据类型

- #### 数值型 `num`、`int`、`double`

  ```dart
  void main() {
    num a = 10;
    a = 10.23;
    print(a);
  
    int b = 10;
    // b = 10.3;
    // A value of type 'double' can't be assigned to a variable of type 'int'.
    // Try changing the type of the variable, or casting the right-hand type to 'int'.
    print(b);
  
    double c = 10.3;
    c = 10;
    print(c);
  }
  ```

  数值型操作

  - 运算符：`+`、`-`、`*`、`/`、`～/`、`%`
  - 常用属性：`isNaN`、`isEven`、`isOdd`等
  - 常用方法：`abs()`、`round()`、`floor()`、`ceil()`、`toInt()`、`toDouble()`

  ```dart
  // 省略多余代码
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
  ```

- #### 字符串

  - 使用单引号、双引号创建字符串
  - 使用三个引号或双引号创建多行字符串
  - 使用`r`创建原始`raw`字符串

  ```dart
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
  }
  ```

  字符串操作

  - 运算符：`+`、`*`、`==`、`[]`
  - 插值表达式：`${expression}`
  - 常用属性：`lenthg`、`isEmpty`、`isNotEmpty`
  - 常用方法：`contains()`、`subString()`、`startsWith()`、`endsWith()`、`indexOf()`、`lastIndexOf()`、`toLowerCase()`、`toUpperCase()`、`trim()`、`trimLeft()`、`trimRight()`、`split()`、`replaceXXX()`

  ```dart
  // 省略多余代码
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
  ```

- #### 布尔型 `true`、`false`

- #### `List`数组

  - 创建`List`：`var list = [1, 2, 3];`
  - 创建不可变的`List`：`var list = const[1, 2, 3];`
  - 构造创建：`var list = new List()`

  ```dart
  void main() {
    var list1 = [1, 2, 3, 'hello', false];
  
    list1[1] = 5;
    list1[2] = 'ds';
  
    print(list1);  // [1, 5, ds, hello, false]
  
    var list2 = const [1, 2, 3, 'world', true];
  
    list2[2] = 4;
  
    print(list2);  // UnsupportedError (Unsupported operation: Cannot modify an unmodifiable list)
  
    var list3 = new List();
  
    print(list3);
  }
  ```

  `List`常用操作

  - `[]`、`length`
  - `add()`、`insert()`
  - `remove()`、`clear()`
  - `indexOf()`、`lastIndexOf()`
  - `sort()`、`sublist()`
  - `shuffle()`、`asMap()`、`forEach()`

  ```dart
  // 省略多余代码
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
  ```

- #### `Map`

  - 创建`Map`：`var language = {'firstName': 'adi', 'lastName': 'das'}`
  - 创建不可变`Map`：`var language = const{'firstName': 'adi', 'lastName': 'das'}`
  - 构造创建：`var language = new Map()`

  ```dart
  void main() {
    var obj = {
      'firstName': 'adi',
      'lastName': 'das',
      3: 'hh'
    };
  
    print(obj);  // {firstName: adi, lastName: das, 3: hh}
    print(obj['firstName']);  // adi
    print(obj[3]);  // hh
  
    var obj1 = const {
      'firstName': 'adi',
      'lastName': 'das',
      3: 'hh'
    };
  
    // obj1[3] = 'ds';  
    // UnsupportedError (Unsupported operation: Cannot set value in unmodifiable Map)
  
    print(obj1);
  }
  ```

  `Map`常用操作

  - `[]`、`length`
  - `isEmpty()`、`isNotEmpty()`
  - `keys`、`values`
  - `containsKey()`、`containsValue()`
  - `remove()`
  - `forEach()`

  ```dart
  print(obj.keys);  // (firstName, lastName, 3)
  print(obj.values);  // (adi, das, hh)
  print(obj.containsKey('firstName'));  // true
  print(obj.containsValue('das'));  // true
  
  obj.remove(3);  // 移除 key 符合的某一项
  print(obj); // {firstName: adi, lastName: das}
  
  obj.forEach(f);
  
  void f(key, value) {
    print('key = $key, value = $value');
  }
  
  // key = firstName, value = adi
  // key = lastName, value = das
  ```

- #### `dynamic` 动态类型

  ```dart
  void main() {
    var a;
    a = 'hello';
    a = 1;  // a 的数据类型是 dynamic
    print(a);
  
    var list = new List<dynamic>();
  
    list.add(1);
    list.add('aaa');
  
    print(list);
  }
  ```

### 算术运算符

- 加减乘除：`+`、`-`、`*`、`/`、`～/`、`%`
- 递增递减：`++var`、`--var`、`var++`、`var--`

### 关系运算符

- 运算符：`==`、`!=`、`>`、`<`、`>=`、`<=`
- 判断内容是否相同使用`==`

### 逻辑运算符

- 运算符：`!`、`&&`、`||`
- 针对布尔类型运算

### 赋值运算符

- 基础运算符：`=`、`??=`

- 复合运算符：`+=`、`-=`、`*=`、`/=`、`%=`、`~/=`

  ```dart
  void main() {
    int b;
  
    b ??= 10;  // ?== 的作用：如果该变量已经被赋值，则使用之前的赋值，如果没有被赋值，则使用运算符后面的值
  
    print(b);
  }
  ```

### 条件表达式

- 三目运算符：`condition?expr1:expr2;`
- `??`运算符：`expr1??expr2`;

### 控制语句

- `if`
- `for`和`for...in`
- `while`
- `break`和`continue`
- `switch...case`

### 方法

方法定义：

```
返回类型 方法名 (参数1, 参数2) {
  方法体...
  return 返回值
}
```

方法特性：

- 方法也是对象，并且有具体类型`Function`
- 返回值类型、参数类型都可省略
- 箭头语法：`=> expr`是`{return expr;}`缩写
- 方法都有返回值，如果没有指定，默认`return null`最后一句执行

可选参数

- 可选命名参数：`{arg1, arg2}`

- 可选位置参数`[arg1, arg2]`

  ```dart
  void main() {
    print(str('pipi'));
    print(str('don', gender: '男'));
    print(str('don', age: 18, gender: '男'));
    print(str2('don', 18, '男'));
  }
  
  // String str(String name, int age) {
  //   return 'name = $name, age = $age';
  // }
  
  // str(name, age) => 'name = $name, age = $age';
  
  str(String name, { int age, String gender }) => 'name = $name, age = $age, gender = $gender';
  str2(String name, [ int age, String gender ]) => 'name = $name, age = $age, gender = $gender';
  ```

默认参数

- 使用`=`在可选参数指定默认值
- 默认值只能是编译时常量

方法对象

- 方法可作为对象赋值给其他变量
- 方法可作为参数传递给其他方法

匿名方法

- 可赋值给变量，通过变量进行调用
- 可在其他方法中直接调用或传递给其他方法

闭包

- 闭包是一个方法（对象）
- 闭包定义在其他方法内部
- 闭包能够访问外部方法内的局部变量，并持有其状态

