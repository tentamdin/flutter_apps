class QuizQuestion {
  final String question;
  final List<String> options;

  const QuizQuestion(
    this.question,
    this.options,
  );

  List<String> getShulffledOptions() {
    final List<String> shuffledOptions = List.of(options);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }
}
