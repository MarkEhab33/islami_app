import 'package:flutter/material.dart';
import 'package:projects/Hadeth/Hadeth_tab.dart';
import 'package:projects/Hadeth/ItemHadethDetails.dart';
import 'package:projects/Providers/AppConfigProvider.dart';
import 'package:provider/provider.dart';
class HadethNameDetails extends StatefulWidget {
  static const routeName ='hadeth-details';

  @override
  State<HadethNameDetails> createState() => _HadethNameDetailsState();
}

class _HadethNameDetailsState extends State<HadethNameDetails> {


  @override
  Widget build(BuildContext context) {
 var args = ModalRoute.of(context)?.settings.arguments as HadethItem;
var provider = Provider.of<AppConfigProvider>(context);

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
            title: Text( args.title,
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
            child: ListView.builder(
                itemBuilder: (context,index){
                  return ItemHadethDetails(hadeth: args.hadethDetails[index]);
                },
                itemCount: args.hadethDetails.length
            ),

          ),
        )
      ],
    );

  }


}
