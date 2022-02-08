import 'package:get/get.dart';
import 'package:supabase/supabase.dart';

class AuthService extends GetxService {
  final SupabaseClient database;

  AuthService({
    required this.database,
  });
}
