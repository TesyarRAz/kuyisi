import 'package:kuyisi/kuyisi/domain/entities/question_bank.dart';

abstract class QuestionBankInterface {
  Future<List<QuestionBank>?> fetchQuestionBanks();
  Future<QuestionBank?> fetchQuestionBank(String id);
}
