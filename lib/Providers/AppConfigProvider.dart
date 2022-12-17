import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
String appLanguage = 'en';
ThemeMode appMode = ThemeMode.light;
 void changeLanguage(String language){
   if(appLanguage == language){
     return;
   }
   else{
     appLanguage= language;
     notifyListeners();
   }

 }
 void changeTheme(ThemeMode newMode){
   if(appMode== newMode){
     return;
   }
   else{
     appMode= newMode;
   }
 notifyListeners();
 }
 bool isDark(){
   return appMode== ThemeMode.dark;
 }


}