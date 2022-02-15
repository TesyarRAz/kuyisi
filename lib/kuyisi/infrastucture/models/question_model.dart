import 'package:kuyisi/kuyisi/domain/entities/choice.dart';
import 'package:kuyisi/kuyisi/domain/entities/question.dart';

class QuestionModel {
  Question? question;
  List<Choice>? choices;

  QuestionModel({
    this.question,
    this.choices,
  });
}
