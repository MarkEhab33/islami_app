import 'package:flutter/material.dart';
import 'package:projects/Hadeth/HadethDetails.dart';
import 'package:projects/Quraan/SuraNameDetails.dart';
import 'package:projects/home/homeScreen.dart';
import 'package:projects/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraNameDetails.routeName:(context)=> SuraNameDetails(),
        HadethNameDetails.routeName:(context)=> HadethNameDetails()

      },
      initialRoute: HomeScreen.routeName,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('en'),
      themeMode: ThemeMode.light,
    );
  }
}
