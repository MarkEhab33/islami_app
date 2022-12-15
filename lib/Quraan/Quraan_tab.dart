import 'package:flutter/material.dart';
import 'package:projects/Providers/AppConfigProvider.dart';
import 'package:projects/Quraan/SuranName.dart';
import 'package:provider/provider.dart';
import '../myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class QuraanScreen extends StatelessWidget {
List<String> names = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return  Column(
      children: [
        Center(child: Image.asset('assets/images/quraan_image.png')),
        Divider(
          thickness: 3,
          color:provider.isDark()? MyTheme.yellowColor:Theme.of(context).primaryColor,
        ),
        Text(
          AppLocalizations.of(context)!.suraName,
          style: Theme.of(context).primaryTextTheme.subtitle2,
        ),
        Divider(
          thickness: 3,
          color:provider.isDark()? MyTheme.yellowColor:Theme.of(context).primaryColor,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context,index){
                   return SuraName(name: names[index], index: index,);
              },
              separatorBuilder: (context,index){
                  return Divider(
                    thickness: 3,
                    color: Theme.of(context).primaryColor,
                  );
              },
              itemCount: names.length,
          ),
        )
      ],
    );
  }
}
