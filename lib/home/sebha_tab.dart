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
double rotationAngle=0;
  Widget build(BuildContext context) {
    return  Container(

        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 50),
                child: Image.asset('assets/images/sebha_head.png' ,scale: 1.4,)),

          InkWell(
            child: Transform.rotate(
                angle: rotationAngle,
                child: Image.asset('assets/images/sebha_body.png',fit: BoxFit.fill ,scale: .99,)),
            onTap:  (){
              tasbehNum++;
              if(tasbehNum%33==0){
                index= (index+1)%3;
              }
              rotationAngle+= 0.19;
              rotationAngle= rotationAngle%360;
              setState(() {

              });
            },

          ),

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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Theme.of(context).primaryColor,
              ),

              margin: EdgeInsets.symmetric(horizontal: 140),
              padding:EdgeInsets.symmetric(vertical: 10) ,

              child: Center(
                  child:Text(
                    tasbehWords[index],
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center,
                  )
              ),
            ),
          ],
        )
    );
  }
}
