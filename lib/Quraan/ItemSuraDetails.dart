import 'package:flutter/material.dart';
class ItemSuraDetails extends StatelessWidget {
 String name;
 int index;
 ItemSuraDetails({required this.name, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:12  ),
      child: Text('$name ($index)',
      style: Theme.of(context).primaryTextTheme.subtitle1,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
