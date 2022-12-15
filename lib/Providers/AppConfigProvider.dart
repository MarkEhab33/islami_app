import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
String appLanguage = 'en';
 void changeLanguage(String language){
   if(appLanguage == language){
     return;
   }
   else{
     appLanguage= language;
     notifyListeners();
   }

 }


}