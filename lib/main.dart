import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/data_package_page.dart';
import 'package:bank_sha/ui/pages/data_provider_page.dart';
import 'package:bank_sha/ui/pages/data_success_page.dart';
import 'package:bank_sha/ui/pages/home_page.dart';
import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:bank_sha/ui/pages/pin_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_pin_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_success_page.dart';
import 'package:bank_sha/ui/pages/profile_page.dart';
import 'package:bank_sha/ui/pages/signin_page.dart';
import 'package:bank_sha/ui/pages/signup_page.dart';
import 'package:bank_sha/ui/pages/signup_set_ktp.dart';
import 'package:bank_sha/ui/pages/signup_set_profile.dart';
import 'package:bank_sha/ui/pages/signup_success_page.dart';
import 'package:bank_sha/ui/pages/splash_page.dart';
import 'package:bank_sha/ui/pages/topup_amount_page.dart';
import 'package:bank_sha/ui/pages/topup_page.dart';
import 'package:bank_sha/ui/pages/topup_success.dart';
import 'package:bank_sha/ui/pages/transfer_amount_page.dart';
import 'package:bank_sha/ui/pages/transfer_page.dart';
import 'package:bank_sha/ui/pages/transfer_success.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/signin': (context) => SignInPage(),
        '/signup': (context) => SignUpPage(),
        '/signup-set-profile': (context) => SignUpSetProfilePage(),
        '/signup-set-ktp': (context) => SignUpSetKtpPage(),
        '/signup-success': (context) => SignUpSuccessPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/pin': (context) => PinPage(),
        '/profile-edit': (context) => ProfileEditPage(),
        '/profile-edit-pin': (context) => ProfileEditPinPage(),
        '/profile-edit-success': (context) => ProfileEditSuccessPage(),
        '/topup': (context) => TopUpPage(),
        '/topup-amount': (context) => TopUpAmountPage(),
        '/topup-success': (context) => TopUpSuccessPage(),
        '/transfer': (context) => TransferPage(),
        '/transfer-amount': (context) => TransferAmountPage(),
        '/transfer-success': (context) => TransferSuccessPage(),
        '/data-provider': (context) => DataProviderPage(),
        '/data-package': (context) => DataPackagePage(),
        '/data-success': (context) => DataSuccessPage(),
      },
    );
  }
}
