import './question.dart';

int _quectionNumber = 0;

class QuizBrain {
  List<Question> _questionBank = [
    Question(
      questionText: 'You can lead a cow down stairs but not up stairs.',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Approximately one quarter of human bones are in the feet.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'A slug\'s blood is green.',
      questionAnswer: true,
    )
  ];
  int _questionNumber = 0; // Move _questionNumber to the QuizBrain class

  bool nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      return true; // Indicate there are more questions
    } else {
      return false; // Indicate no more questions
    }
  }

  String getQuestiontext() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  // Add a reset method to reset the quiz
  void reset() {
    _questionNumber = 0;
  }
}
