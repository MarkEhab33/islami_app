import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class RadioScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return  Container(
        child: Column(
          children: [
            SizedBox(height: 90,),
            Image.asset('assets/images/ic_radio_main.png'),
            SizedBox(height: 30,),
           Text(
            'اذاعة القرآن الكريم',
             style: Theme.of(context).textTheme.subtitle1,
           ) ,
            SizedBox(height:50,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.skip_next_rounded,
                 size: 30,color: Theme.of(context).primaryColor,),

               SizedBox(width: 50,),
               Icon(Icons.play_arrow_rounded,
                   size:50,color: Theme.of(context).primaryColor,),
               SizedBox(width: 50,),
               Icon(Icons.skip_previous_rounded,
                 size: 30,
                 color: Theme.of(context).primaryColor,
               ),

             ],
           )


          ],
        )
    );
  }
}
