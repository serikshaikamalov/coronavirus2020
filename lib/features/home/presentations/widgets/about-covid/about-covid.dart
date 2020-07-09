import 'package:flutter/material.dart';

class AboutCovid extends StatefulWidget {
  @override
  _AboutCovidState createState() => _AboutCovidState();
}

class _AboutCovidState extends State<AboutCovid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0XFFE80E19)),
          color: Color(0XFFEE4D23).withOpacity(0.9),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(7),
      child: Row(
        children: [
          imageCovi(),
          coronavirusTextUI(),
        ],
      ),
    );
  }

  Widget imageCovi() {
    return Container(
      child: Image.asset(
        'assets/images/covid.png',
        width: 100,
      ),
    );
  }

  Widget coronavirusTextUI() {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              'COVID-19',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Covid-19 - это новый респираторный вирус, впервые выявленный в декабре 2019 года в городе Ухань, Китай. Он передается воздушно-капельным путем от человека к человеку.',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
