class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void exercise4() {
  List<Person> people = [
    Person("Alice", 25),
    Person("Bob", 30),
    Person("Charlie", 35),
    Person("Anna", 22),
    Person("Ben", 28),
  ];

  var filtered = people.where((person) =>
      person.name.startsWith("A") || person.name.startsWith("B")).toList();

  print("People whose name starts with A or B:");
  for (var person in filtered) {
    print("  ${person.name}, age ${person.age}");
  }

  var averageAge =
      filtered.map((person) => person.age).reduce((a, b) => a + b) /
          filtered.length;

  print("Average age   : ${averageAge.toStringAsFixed(1)}");
}

void main() {
  exercise4();
}
