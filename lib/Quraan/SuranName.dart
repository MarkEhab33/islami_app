import 'package:flutter/material.dart';

import 'SuraNameDetails.dart';

class SuraName extends StatelessWidget {
String name ;
int index;
 SuraName({required this.name , required this.index});
 @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraNameDetails.routeName,
        arguments: SuraNameDetailsArgs(name: name, index: index)
        );
      },
      child: Text( name,
        style: Theme.of(context).primaryTextTheme.subtitle2,
        textAlign: TextAlign.center,

      ),
    );
  }
}
