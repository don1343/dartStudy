void main() {
  var obj = {'firstName': 'adi', 'lastName': 'das', 3: 'hh'};

  print(obj); // {firstName: adi, lastName: das, 3: hh}
  print(obj['firstName']); // adi
  print(obj[3]); // hh

  var obj1 = const {'firstName': 'adi', 'lastName': 'das', 3: 'hh'};

  // obj1[3] = 'ds';
  // UnsupportedError (Unsupported operation: Cannot set value in unmodifiable Map)

  print(obj1);

  print(obj.keys); // (firstName, lastName, 3)
  print(obj.values); // (adi, das, hh)
  print(obj.containsKey('firstName')); // true
  print(obj.containsValue('das')); // true

  obj.remove(3); // 移除 key 符合的某一项
  print(obj); // {firstName: adi, lastName: das}

  obj.forEach(f);
}

void f(key, value) {
  print('key = ${key}, value = ${value}');
}

// key = firstName, value = adi
// key = lastName, value = das
