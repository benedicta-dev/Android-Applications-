void exercise3() {
  final words = ["apple", "cat", "banana", "dog", "elephant"];

  print('Original words: $words');
  print('Words with length greater than 4:');

  Map.fromEntries(
    words.map((word) => MapEntry(word, word.length))
  )
      .entries
      .where((entry) => entry.value > 4)
      .forEach((entry) {
        final word = entry.key;
        final length = entry.value;
        print('$word has length $length');
      });
}

void main() {
  exercise3();
}
