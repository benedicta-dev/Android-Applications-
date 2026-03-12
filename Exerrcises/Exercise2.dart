List<int> processList(
  List<int> numbers, 
  bool Function(int) predicate
) {
  return numbers.where(predicate).toList();
}

void exercise2() {
  final nums = [1, 2, 3, 4, 5, 6];

  final even = processList(nums, (n) => n % 2 == 0);
  print('Original list : $nums');
  print('Even numbers  : $even');

  final greaterThanThree = processList(nums, (n) => n > 3);
  print('Greater than 3: $greaterThanThree');

  final odd = processList(nums, (n) => n % 2 != 0);
  print('Odd numbers   : $odd');
}

void main() {
  exercise2();
}
