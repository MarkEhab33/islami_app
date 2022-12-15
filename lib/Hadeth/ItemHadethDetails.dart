import 'package:flutter/material.dart';
class ItemHadethDetails extends StatelessWidget {
String hadeth;
ItemHadethDetails({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:12  ),
      child: Text('$hadeth',
        style: Theme.of(context).primaryTextTheme.subtitle1,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
