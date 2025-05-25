import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // For system ui

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

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
    const Color appClr = Colors.deepPurpleAccent;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Code Pro',
      theme: ThemeData(
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
      ),
      home: SelectionArea(child: const HomeScreen()),
    );
  }
}

//  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio:
//                 (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
//             mainAxisSpacing: 10,
//             crossAxisSpacing: 10,
//           ),
