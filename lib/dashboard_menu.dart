import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:social_police_webapp/chart_data.dart';
import 'package:social_police_webapp/dash_board2.dart';
import 'package:social_police_webapp/latest_crime_report.dart';
import 'package:social_police_webapp/pie_chart.dart';
import 'package:social_police_webapp/table_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final SearchController = TextEditingController();
  Icon customIcon = const Icon(Icons.search);
  @override
  PageController page = PageController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SideMenu(
            controller: page,
            style: SideMenuStyle(
              backgroundColor: Color(0xff2758C2),
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Colors.blue[100],
              selectedColor: Color(0xff10B981),
              selectedTitleTextStyle: TextStyle(color: Colors.white),
              selectedIconColor: Colors.white,
            ),
            title: Column(
              children: [
                ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 150,
                      maxWidth: 150,
                    ),
                    child: FittedBox(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'SLEECS',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Color(
                                  0xffFFFFFF,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Admin System',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(
                                0xffFFFFFF,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                const Divider(
                  indent: 8.0,
                  endIndent: 8.0,
                ),
              ],
            ),
            footer: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'SLEECS',
                style: TextStyle(fontSize: 15),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'DashBoard',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: const Icon(
                  Icons.signal_cellular_alt_rounded,
                  color: Color(0xff10B981),
                ),
                badgeContent: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
                tooltipContent: "This is a tooltip for Dashboard item",
              ),
              SideMenuItem(
                priority: 1,
                title: 'Crime Information',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: const Icon(Icons.person_add_alt),
              ),
              SideMenuItem(
                priority: 2,
                title: 'Police Officer information',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: const Icon(Icons.shopping_bag),
                trailing: Container(
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6.0, vertical: 3),
                      child: Text(
                        'New',
                        style: TextStyle(fontSize: 11, color: Colors.grey[800]),
                      ),
                    )),
              ),
              SideMenuItem(
                priority: 3,
                title: 'Response Information',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: const Icon(Icons.download),
              ),
              SideMenuItem(
                priority: 4,
                title: 'Resident Information',
                onTap: () {
                  page.jumpToPage(4);
                },
                icon: const Icon(Icons.settings),
              ),
              const SideMenuItem(
                priority: 7,
                title: 'Crime Category',
                icon: Icon(Icons.exit_to_app),
              ),
              const SideMenuItem(
                priority: 8,
                title: 'Database Backup/Restore',
                icon: Icon(Icons.exit_to_app),
              ),
            ],
          ),
          Expanded(
              child: PageView(controller: page, children: [
            Container(
              color: Colors.white,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(onPressed: () {}, icon: customIcon),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/twopersons.png",
                                height: 40,
                                width: 40,
                              ),
                              Image(
                                height: 40,
                                width: 40,
                                image: AssetImage("assets/images/bellicon.png"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          children: [
                            dashboardtwo(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: FittedBox(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              BarChartSample2(),
                              PieChartSample3(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      child: FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            LatestCrimeReport(),
                            TableInfo(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Users',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Files',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Download',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Settings',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Only Title',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Only Icon',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
