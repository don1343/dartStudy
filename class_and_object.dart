import './person.dart';

void main() {
  var person = new Person();

  person.name = 'don';
  person.age = 19;

  print(person.name);
  print(person.age);

  person.work();
}