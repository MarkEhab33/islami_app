import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects/Hadeth/HadethName.dart';
import 'package:projects/myThemeData.dart';



class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
List<HadethItem> allHadeth =[];

  Widget build(BuildContext context) {
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
              color: Theme.of(context).primaryColor,
            ),
            Text(
              'Hadeth Name',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Divider(
              thickness: 3,
              color: Theme.of(context).primaryColor,
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
