import 'package:flutter/material.dart';
import 'package:projects/Providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatefulWidget {


  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
           onTap: (){
             provider.changeLanguage('en');
           },
            child: getSelectedItemWidget(AppLocalizations.of(context)!.english, provider.appLanguage=='en')
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              provider.changeLanguage('ar');
            },
              child:  getSelectedItemWidget(AppLocalizations.of(context)!.arabic, provider.appLanguage=='ar')
          )
        ],
      ),
    );
  }
  Widget getSelectedItemWidget(String text, bool selected){
    if(selected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(color: Theme
              .of(context)
              .primaryColor, fontSize: 18),),
          Icon(Icons.check, size: 25, color: Theme
              .of(context)
              .primaryColor,)
        ],
      );
    }
    else{
    return Text(text, style:TextStyle(fontSize: 18), );
    }
  }
}
