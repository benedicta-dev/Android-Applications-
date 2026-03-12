void exercise1() {
  final numbers = [1, 4, 7, 3, 9, 2, 8];

  print('Original list: $numbers');
  print('Squared numbers greater than 5:');

  numbers
      .where((n) => n > 5)       // Step 1: keep only numbers > 5 → [7, 9, 8]
      .map((n) => n * n)         // Step 2: square each → [49, 81, 64]
      .forEach((n) => print(n)); // Step 3: print each result
}

void main() {
  exercise1();
}
