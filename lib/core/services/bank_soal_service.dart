import 'package:get/get.dart';
import 'package:supabase/supabase.dart';

class BankSoalService extends GetxService {
  static const collection = "bank_soals";

  final SupabaseClient database;

  BankSoalService({
    required this.database,
  });

  Future<PostgrestResponse<dynamic>> all() {
    return database.from(collection).select().execute();
  }
}
