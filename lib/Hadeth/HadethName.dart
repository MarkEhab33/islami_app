import 'package:flutter/material.dart';

import 'HadethDetails.dart';
import 'Hadeth_tab.dart';


class HadethName extends StatelessWidget {
String name ;
List<String> hadethDetails;
 HadethName({required this.name,required this.hadethDetails});
 @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethNameDetails.routeName,
        arguments: HadethItem(title: name, hadethDetails: hadethDetails)
        );
      },
      child: Text( name,
        style: Theme.of(context).primaryTextTheme.subtitle2,
        textAlign: TextAlign.center,

      ),
    );
  }
}
