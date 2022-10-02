import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LatestCrimeReport extends StatelessWidget {
  LatestCrimeReport({Key? key}) : super(key: key);

  final List<String> entries = [
    'Criminal damage and arson',
    'Posession of weapons',
    'Bank Robbery',
    'Violence and sexual offences',
    'Anti-social behaviour'
  ];
  final List<Image> sorpiimage = [
    Image(
      image: AssetImage('assets/images/burninghouse.png'),
    ),
    Image(
      image: AssetImage('assets/images/publicorder.png'),
    ),
    Image(
      image: AssetImage('assets/images/robber.png'),
    ),
    Image(
      image: AssetImage('assets/images/sexoffender.png'),
    ),
    Image(
      image: AssetImage('assets/images/burglary.png'),
    ),
  ];
  final List<String> subtext = [
    'Updated 2 hours ago',
    'Updated 2 hours ago',
    'Updated 2 hours ago',
    'Updated 2 hours ago',
    'Updated 2 hours ago'
  ];
  final List<String> subtext2 = [
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: Column(
        children: [
          Container(
            child: Text(
              'Latest Crime Reports',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              // style: headerStyle,
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              width: 354,
              height: 400,
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemCount: entries.length,
                separatorBuilder: (context, index) => Divider(
                  color: Colors.black,
                ),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                      ),
                      child: sorpiimage[index],
                    ),
                    title: Text(
                      '${entries[index]}',
                      // style: tripstextstyle,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '${subtext[index]}',
                          // style: tripsubstyletext,
                        ),
                        Text(
                          '${subtext2[index]}',
                          // style: tripdatestyletext,
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.dangerous),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
