import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuyisi/common/security/secret.dart';
import 'package:kuyisi/kuyisi/infrastucture/data_sources/question_bank_local_data_provider.dart';
import 'package:kuyisi/kuyisi/infrastucture/data_sources/question_bank_remote_data_provider.dart';
import 'package:kuyisi/kuyisi/infrastucture/repositories/question_bank_repository.dart';
import 'package:kuyisi/kuyisi/presentation/splash_screen.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:supabase/supabase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initServices();

  runApp(const MyApp());
}

Future<void> initServices() async {
  var secret = await Secret.load("secrets.json");

  var database = SupabaseClient(secret.supabaseUrl, secret.supabaseKey);

  await Get.putAsync(() => PackageInfo.fromPlatform());

  Get.lazyPut(() => QuestionBankLocalDataProvider());
  Get.lazyPut(() => QuestionBankRemoteDataProvider(database));

  Get.lazyPut(
    () => QuestionBankRepository(
      connectivity: Get.find(),
      questionBankRemoteDataProvider: Get.find(),
      questionBankLocalDateProvider: Get.find(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.ubuntuTextTheme(),
      ),
      home: const SplashScreen(),
    );
  }
}
