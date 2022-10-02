import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class dashboardtwo extends StatelessWidget {
  const dashboardtwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.08),
                  offset: Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Color(0xffFFFFFF),
              shape: BoxShape.rectangle,
            ),
            width: 374,
            height: 178,
            child: Padding(
              padding: const EdgeInsets.all(34.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 306,
                    height: 74,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'Total Crimes Reported\n',
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '12324',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              color: Color(0xffD14343),
                              shape: BoxShape.circle,
                            ),
                            child: Image(
                              image: AssetImage("assets/images/bellicon.png"),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                        Text.rich(
                          TextSpan(
                            text: '12% ',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                  text: 'lastmonth',
                                  style: TextStyle(color: Colors.black))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.08),
                  offset: Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Color(0xffFFFFFF),
              shape: BoxShape.rectangle,
            ),
            width: 374,
            height: 178,
            child: Padding(
              padding: const EdgeInsets.all(34.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 306,
                    height: 74,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'Total Police Officers\n',
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '24585',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              color: Color(0xff14B8A6),
                              shape: BoxShape.circle,
                            ),
                            child: Image(
                              image: AssetImage("assets/images/bellicon.png"),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                        Text.rich(
                          TextSpan(
                            text: '12% ',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                  text: 'lastmonth',
                                  style: TextStyle(color: Colors.black))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.08),
                  offset: Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Color(0xffFFFFFF),
              shape: BoxShape.rectangle,
            ),
            width: 374,
            height: 178,
            child: Padding(
              padding: const EdgeInsets.all(34.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 306,
                    height: 74,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'Total Crimes Solved\n',
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '64350',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              color: Color(0xffFFB020),
                              shape: BoxShape.circle,
                            ),
                            child: Image(
                              image: AssetImage("assets/images/bellicon.png"),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                        Text.rich(
                          TextSpan(
                            text: '12% ',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                  text: 'lastmonth',
                                  style: TextStyle(color: Colors.black))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.08),
                  offset: Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Color(0xffFFFFFF),
              shape: BoxShape.rectangle,
            ),
            width: 374,
            height: 178,
            child: Padding(
              padding: const EdgeInsets.all(34.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 306,
                    height: 74,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'Total Crimes Going On\n',
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '467077',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              color: Color(0xff5048E5),
                              shape: BoxShape.circle,
                            ),
                            child: Image(
                              image: AssetImage("assets/images/bellicon.png"),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                        Text.rich(
                          TextSpan(
                            text: '12% ',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                  text: 'lastmonth',
                                  style: TextStyle(color: Colors.black))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
