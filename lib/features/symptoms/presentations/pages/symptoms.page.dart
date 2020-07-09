import 'package:coronavirus2020/shared/widgets/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class SymptomsPage extends StatefulWidget {
  @override
  _SymptomsPageState createState() => _SymptomsPageState();
}

class _SymptomsPageState extends State<SymptomsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Симптомы COVID-19'),
        ),
        body: AppWrapperWidget.wrapPageWithPadding(
          page: SingleChildScrollView(
              child: Html(
                  data:
                      "<p>К наиболее распространенным симптомам COVID-19 относятся повышение температуры тела, сухой кашель и утомляемость. К более редким симптомам относятся боли в суставах и мышцах, заложенность носа, головная боль, конъюнктивит, боль в горле, диарея, потеря вкусовых ощущений или обоняния, сыпь и изменение цвета кожи на пальцах рук и ног. Как правило, эти симптомы развиваются постепенно и носят слабо выраженный характер. У некоторых инфицированных лиц болезнь сопровождается очень легкими симптомами.</p><p>Большинство заболевших (около 80%) выздоравливают спонтанно без необходимости в госпитализации. Примерно в одном из пяти случаев заболевание COVID-19 протекает в тяжелой форме с развитием дыхательной недостаточности. У пожилых людей, а также лиц с сопутствующими заболеваниями, например гипертонией, заболеваниями сердца или легких, диабетом или раком, вероятность тяжелого течения заболевания выше.  Тем не менее заразиться COVID-19 и тяжело заболеть может каждый.  Людям в любом возрасте следует незамедлительно обращаться за медицинской помощью в случае наличия повышенной температуры тела и/или кашля, сопровождающихся затрудненным дыханием/одышкой, болью/ощущением заложенности в грудной клетке, нарушениями речи или движения. По возможности рекомендуется вызвать врача по телефону или предварительно позвонить в больницу, что позволит направить пациента в профильное медицинское учреждение.</p>")),
        ));
  }
}
