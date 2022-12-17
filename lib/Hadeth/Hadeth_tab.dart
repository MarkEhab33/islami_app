import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects/Hadeth/HadethName.dart';
import 'package:projects/Providers/AppConfigProvider.dart';
import 'package:projects/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
List<HadethItem> allHadeth =[];

  Widget build(BuildContext context) {
    var provider= Provider.of<AppConfigProvider>(context);
    if(allHadeth.isEmpty){
      loadHadethfile();
    }
    return Container(
       child: Column(
          children: [
            Expanded(
              flex: 1,
                child: Image.asset('assets/images/hadeth_image.png')),
            Divider(
              thickness: 3,
              color:provider.isDark()?MyTheme.yellowColor:Theme.of(context).primaryColor,
            ),
            Text(
              AppLocalizations.of(context)!.hadethName,
              style: Theme.of(context).primaryTextTheme.subtitle2,
            ),
            Divider(
              thickness: 3,
              color:provider.isDark()? MyTheme.yellowColor:Theme.of(context).primaryColor,
            ),
            Expanded(
              flex: 3,
              child: ListView.separated(
                itemBuilder: (context,index){
                  return HadethName( name: allHadeth[index].title,hadethDetails: allHadeth[index].hadethDetails, );
                },
                separatorBuilder: (context,index){
                  return Divider(
                    thickness: 3,
                    color: Theme.of(context).primaryColor,
                  );
                },
                itemCount: allHadeth.length,
              ),
            )

          ],
        )
    );
  }

  void loadHadethfile() async{
   String content = await rootBundle.loadString('assets/files/ahadeth.txt');
   List<String> allHadethContent = content.split('#\r\n');

   for (int i=0 ; i< allHadethContent.length;i++){

    List <String> hadeth = allHadethContent[i].split('\n') ;
    String title = hadeth[0];
     hadeth.removeAt(0);
     HadethItem h = HadethItem(title: title, hadethDetails: hadeth);
     allHadeth.add(h);
     setState(() {

     });
   }
  }
}
class HadethItem{
  String title;
  List<String> hadethDetails;
  HadethItem({required this.title, required this.hadethDetails});
}
