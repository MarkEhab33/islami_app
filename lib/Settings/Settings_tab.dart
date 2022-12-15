import 'package:flutter/material.dart';
import 'package:projects/Providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';

import 'Language Bottom Sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 18),
          Container(
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
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  )
                ],
              ),
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
