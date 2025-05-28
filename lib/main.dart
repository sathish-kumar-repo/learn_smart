import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_smart/router/router.dart';
import 'package:learn_smart/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // For system ui

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Code Pro',
      theme: themeData(),
    );
  }

  ThemeData themeData() {
    const appClr = AppTheme.appClr;
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: appClr,
        primary: appClr,
        secondary: appClr.withOpacity(0.8),
      ),
      textTheme: TextTheme(
        bodyMedium: GoogleFonts.roboto(),
        bodyLarge: GoogleFonts.roboto(),
        bodySmall: GoogleFonts.roboto(),
      ),
    );
  }
}
