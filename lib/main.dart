import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuyisi/core/screens/screens.dart';
import 'package:kuyisi/core/security/secret_loader.dart';
import 'package:kuyisi/core/services/auth_service.dart';
import 'package:kuyisi/core/services/bank_soal_service.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:supabase/supabase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initServices();

  runApp(const MyApp());
}

Future<void> initServices() async {
  var secret = await SecretLoader(secretPath: "secrets.json").load();

  var database = SupabaseClient(secret.supabaseUrl, secret.supabaseKey);

  await Get.putAsync(() => PackageInfo.fromPlatform());
  await Get.putAsync(() async => AuthService(database: database));
  await Get.putAsync(() async => BankSoalService(database: database));
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
