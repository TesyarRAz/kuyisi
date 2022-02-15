import 'package:get/get.dart';
import 'package:supabase/supabase.dart';

class QuestionBankRemoteDataProvider extends GetxService {
  final SupabaseClient database;

  QuestionBankRemoteDataProvider(this.database);
}
