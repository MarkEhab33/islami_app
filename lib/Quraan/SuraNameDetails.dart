import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects/Providers/AppConfigProvider.dart';
import 'package:projects/Quraan/ItemSuraDetails.dart';
import 'package:provider/provider.dart';

class SuraNameDetails extends StatefulWidget {
static const routeName ='sura-details';

  @override
  State<SuraNameDetails> createState() => _SuraNameDetailsState();
}

class _SuraNameDetailsState extends State<SuraNameDetails> {
List< String> verses=[];

  @override
  Widget build(BuildContext context) {
 var args = ModalRoute.of(context)?.settings.arguments as SuraNameDetailsArgs;
 var provider = Provider.of<AppConfigProvider>(context);
   if(verses.isEmpty){
     loadFile(args.index);
   }
    return Stack(
      children: [
        provider.isDark()? Image.asset(
          'assets/images/background_dark.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ) :
        Image.asset(
          'assets/images/background_light.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(
                "${args.name}",
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
              centerTitle: true,
            ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 24,vertical: 40),
           decoration: BoxDecoration(
             color:  provider.isDark()? Color(0xFF141A2E):Colors.white,
             borderRadius: BorderRadius.circular(24)
           ),
            child: verses.length==0?
             CircularProgressIndicator():
            ListView.separated(
                itemBuilder: (context,index){
                       return ItemSuraDetails(name: verses[index], index:index );
                },
                separatorBuilder: (context,index){
                   return Divider(
                     color: Colors.transparent,
                    thickness: 2,
                  );
                },
                itemCount: verses.length
            ),
          ),
        )
      ],
    );

  }

void loadFile(index)async{
  String content = await rootBundle.loadString('assets/files/${index+1}.txt');
  verses = content.split('\n');
  setState(() {

  });
  }
}
class SuraNameDetailsArgs{
  String name;
  int index;
 SuraNameDetailsArgs({required this.name, required this.index});
}