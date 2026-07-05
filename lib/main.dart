import 'dart:ui';
import 'package:exercise_projects/core/routing/routing.dart';
import 'package:exercise_projects/features/Student/logic/student_provider.dart';
import 'package:exercise_projects/features/home/home_screen.dart';
import 'package:exercise_projects/features/main_layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtilInit;
import 'package:provider/provider.dart';
import 'Localization/l10n/app_localization.dart';


Locale currentLocale = const Locale("en");

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StudentProvider()),
        
      ], 
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true, 
        builder: (_, child) {
          return MaterialApp(
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              fontFamily: "Tajawal",
            ),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: onGenerateRoute,
            home: const HomeScreen(),
            locale: currentLocale,
            supportedLocales: const [Locale("en"), Locale("ar")],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
          );
        },
      ), // تم حذف القوس المربع الزائد الذي كان يسبب الخطأ في النهاية
    );
  }
}
