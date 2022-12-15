import 'package:flutter/material.dart';
import 'package:projects/Providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';

import '../myThemeData.dart';
import 'Language Bottom Sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rolling_switch/rolling_switch.dart';
class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).primaryTextTheme.subtitle1,
          ),
          SizedBox(height: 18),
          Container(
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).primaryColor),
            padding: EdgeInsets.all(15),
            child: InkWell(
              onTap: () {
                showLanguageBottomSheet();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appLanguage == 'en'
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Text(
            AppLocalizations.of(context)!.theming,
            style: Theme.of(context).primaryTextTheme.subtitle1,
          ),
          SizedBox(height: 18),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).primaryColor),
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 provider.isDark()
                      ? AppLocalizations.of(context)!.dark
                      : AppLocalizations.of(context)!.light,
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),

                Transform.scale(
                  scale: .9,
                  child: RollingSwitch.widget(
                  onChanged: (bool state){
                   if(state){
                     provider.changeTheme(ThemeMode.dark);
                   }
                   else{
                     provider.changeTheme(ThemeMode.light);
                   }
             },
               rollingInfoRight: RollingWidgetInfo(
                   icon: Icon(Icons.nightlight_outlined,
                       color:Theme.of(context).primaryColor),
                   text: Text(AppLocalizations.of(context)!.dark),
                   backgroundColor: MyTheme.yellowColor,
               ),
               rollingInfoLeft: RollingWidgetInfo(
                   icon: Icon(Icons.light_mode_rounded),
                   backgroundColor: Colors.grey,
                   text: Text(AppLocalizations.of(context)!.light),
               ),

             ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }
}
