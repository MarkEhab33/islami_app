import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Text('Language'),
            Container(
              child: Row(
                children: [
                  Text('English'),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            )
          ],
        ),
    );
  }
}
