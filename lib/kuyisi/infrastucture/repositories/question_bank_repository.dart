import 'package:kuyisi/common/exceptions/server_exception.dart';
import 'package:kuyisi/common/platform/connectivity.dart';
import 'package:kuyisi/kuyisi/domain/entities/question_bank.dart';
import 'package:kuyisi/kuyisi/domain/interfaces/question_bank_interface.dart';
import 'package:kuyisi/kuyisi/infrastucture/data_sources/question_bank_local_data_provider.dart';
import 'package:kuyisi/kuyisi/infrastucture/data_sources/question_bank_remote_data_provider.dart';

class QuestionBankRepository implements QuestionBankInterface {
  final Connectivity connectivity;
  final QuestionBankRemoteDataProvider questionBankRemoteDataProvider;
  final QuestionBankLocalDataProvider questionBankLocalDateProvider;

  QuestionBankRepository({
    required this.connectivity,
    required this.questionBankRemoteDataProvider,
    required this.questionBankLocalDateProvider,
  });

  @override
  Future<QuestionBank?> fetchQuestionBank(String id) async {
    if (connectivity.isConnected) {}

    return null;
  }

  @override
  Future<List<QuestionBank>?> fetchQuestionBanks() async {
    if (connectivity.isConnected) {}

    return null;
  }
}
