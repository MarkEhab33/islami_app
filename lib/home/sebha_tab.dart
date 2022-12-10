import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
int tasbehNum=0;
int index =0;
List<String> tasbehWords=['سبحان الله','استغفر الله','الحمد لله'];

  Widget build(BuildContext context) {
    return  Container(

        child: Column(
          children: [
            Image.asset('assets/images/sebha_image.png',fit: BoxFit.fill ,),
            SizedBox(height: 30,),
            Text(
              'عدد التسبيحات',
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ) ,
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xDDB7935F),
              ),

              margin: EdgeInsets.symmetric(horizontal: 160),
              padding:EdgeInsets.symmetric(vertical: 25) ,

              child: Center(
                child: Text(
                  "$tasbehNum" ,
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              tasbehNum++;
                if(tasbehNum%100==0){
                  index= (index+1)%3;
              }
              setState(() {

              });
            },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  textStyle: const TextStyle(

                      fontSize: 10,
                      fontStyle: FontStyle.normal),
                ),
                child:Text(
                  tasbehWords[index],
                  style: Theme.of(context).textTheme.subtitle2,
                  textAlign: TextAlign.center,
                )
            )
          ],
        )
    );
  }
}
