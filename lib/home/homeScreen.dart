import 'package:flutter/material.dart';
import 'package:projects/Hadeth//Hadeth_tab.dart';
import 'package:projects/Quraan/Quraan_tab.dart';
import 'package:projects/home/Radio_tab.dart';
import 'package:projects/Settings/Settings_tab.dart';
import 'package:projects/home/sebha_tab.dart';
import 'package:projects/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectdIndex =0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background_light.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: MyTheme.goldPrimary,
            currentIndex:selectdIndex ,
            onTap: (index){
              selectdIndex=index;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_quraan.png'),),
                label: AppLocalizations.of(context)!.quran
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png'),),
                  label: AppLocalizations.of(context)!.hadeth
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_sebha.png'),),
                  label: AppLocalizations.of(context)!.tasbeh
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_radio.png'),),
                  label: AppLocalizations.of(context)!.radio
              ),
              BottomNavigationBarItem(
                  icon:Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings
              ),
            ],
          ),
          body:tabs[selectdIndex]
        )
      ],
    );
  }
List<Widget> tabs =[QuraanScreen(),HadethScreen(),SebhaScreen(),RadioScreen(),SettingsScreen()];
}
