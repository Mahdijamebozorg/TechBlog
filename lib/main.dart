import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tech_blog/colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_blog/gen/fonts.gen.dart';
import 'package:tech_blog/spash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: SolidColors.scaffoldBgColor,
      systemNavigationBarColor: SolidColors.scaffoldBgColor,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa", ""),
      ],
      debugShowCheckedModeBanner: false,
      title: 'TechBlog',
      //
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: FontFamily.vazir,
        //
        textTheme: TextTheme(
          //
          titleLarge: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          //
          titleMedium: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 12,
              fontWeight: FontWeight.w300),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
