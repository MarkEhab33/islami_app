import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Language',style: Theme.of(context).textTheme.headline1,),
            SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).primaryColor
              ),
              padding: EdgeInsets.all(15),
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('English',style: Theme.of(context).textTheme.subtitle1,),
                    Icon(Icons.arrow_drop_down,size: 30,)
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}
