import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';
import 'package:order_dashboard_project/Screens/setting.dart';


class OrderDashboard extends StatefulWidget {
  const OrderDashboard({super.key});

  @override
  State<OrderDashboard> createState() => _OrderDashboardState();
}

class _OrderDashboardState extends State<OrderDashboard> {
  int myindex = 0;
  final speedNotifier = ValueNotifier<double>(10);
  final key = GlobalKey<KdGaugeViewState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Profile(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Order Dashboard',style: TextStyle(
          fontSize: 25,color: Colors.black,fontFamily:'Lexend',
        ),),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(onPressed: (){
                Scaffold.of(context).openDrawer();
              }, icon: const Icon(Icons.face));
            }
          )
        ],
        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(icon: Icon(Icons.home_filled),
        //   label: 'Home'),
        //
        // ],)
      ),
      bottomNavigationBar: NavigationBar(
        height: 80,
        onDestinationSelected: (index) {
          setState(() {
            myindex = index;
          });
        },
        destinations:const [
          NavigationDestination(icon: Icon(Icons.multitrack_audio_outlined), label: 'My track'),
          NavigationDestination(icon: Icon(Icons.history_rounded), label: 'History'),
          NavigationDestination(icon: Icon(Icons.message_outlined), label: 'Reminder'),
          NavigationDestination(icon: Icon(Icons.person_rounded), label: 'Profile'),
        ],
        selectedIndex: myindex,
      ),

       body:  Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               const SizedBox(
          height: 10,
               ),
           Container(
          height: 148,
          width: 390,
             child: AspectRatio(aspectRatio: 1,
                child: LineChart(LineChartData(
              lineBarsData: [
                LineChartBarData(
                      spots: const [
                        FlSpot( 0,  3),
                        FlSpot(2.6, 2),
                        FlSpot(4.9, 5),
                        FlSpot(6.8, 2.5),
                        FlSpot(8, 4),
                        FlSpot(9.5, 3),
                        FlSpot(11, 4),
                      ],
                  isCurved: true,
                  dotData: FlDotData(show: true),
                  color: Colors.cyan,
                  barWidth: 5,),],
            )),
             ),
               ), const SizedBox(
          height: 2,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                             width: 180,
                             height: 180,
                             child: ValueListenableBuilder<double>(
                                 valueListenable: speedNotifier,
                                 builder: (context, value, child) {
                    print(value);
                    return KdGaugeView(
                      key: key,
                      minSpeed: 0,
                      maxSpeed: 100,
                      speed: 70,
                      animate: false,
                      alertSpeedArray: [40, 80, 90],
                      alertColorArray: [Colors.orange, Colors.indigo, Colors.red],
                      duration: Duration(seconds: 6),
                    );
                                 }),
                   ),
                 ],
               ),
               ValueListenableBuilder<double>(
          valueListenable: speedNotifier,
          builder: (context, value, child) => Slider(
            onChanged: (value) {
              key.currentState!.updateSpeed(value);
              speedNotifier.value = value;
            },
            max: 100,
            min: 10,
            value: value,
          ),
               ),
            SizedBox(
          height: 2,
               ),
          Center(
          child: Container(
            height: 50,
              width: 380,
              color: Colors.blue,
              child:ListView(
                children: const [
                  Center(
                    child: ListTile(
                      leading: Icon(Icons.table_rows,color: Colors.white,),
                      title: Text('Compare to last month' ,

                              style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500)),

                      trailing: Icon(Icons.chevron_right,
                        color: Colors.white,),

                    ),
                  ),
                ],
              ),
          ),
          ),
              //Center(
              //   child: Row(
              //      crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //   Icon(
              //     Icons.tab,
              //     color: Colors.white,
              //     size: 30,
              //   ),
              //    SizedBox(width: 10,),
              //     Text('Compare to last month \n Compare stats between months',
              //         style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500)),
              //     ], ),
              // ),
          const SizedBox(
          height: 20,
               ),
          Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                  height: 60,
                  width: 80,
                  child: PieChart(PieChartData(
                      centerSpaceRadius: 5,
                      borderData: FlBorderData(show: false),
                      sectionsSpace: 2,
                      sections: [
                        PieChartSectionData(
                            value: 35,color: Colors.cyanAccent,radius: 50
                        ),
                        PieChartSectionData(
                            value: 55,color: Colors.green,radius: 50
                        ),
                        PieChartSectionData(
                            value: 70,color: Colors.blue,radius: 50
                        ),
                        PieChartSectionData(
                            value: 40,color: Colors.red,radius: 50,
                        ),
                      ]
                  )),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 170,
              width: 260,
              child: BarChart(BarChartData(
                  borderData: FlBorderData(
                    border: const Border(
                      top: BorderSide.none,
                      right: BorderSide.none,
                      left: BorderSide(width: 1),
                      bottom: BorderSide(width: 1),
                    ),
                  ),
                  groupsSpace: 10,
                  barGroups: [
                    BarChartGroupData(
                        x: 1,
                        barRods: [
                          BarChartRodData(fromY: 0,toY: 10,width: 15,color: Colors.blue )]
                    ),
                    BarChartGroupData(
                        x: 1,
                        barRods: [
                          BarChartRodData(fromY: 0,toY: 8,width: 15,color: Colors.blue )]
                    ),
                    BarChartGroupData(
                        x: 1,
                        barRods: [
                          BarChartRodData(fromY: 0,toY: 5,width: 15,color: Colors.blue )]
                    ),
                    BarChartGroupData(
                        x: 1,
                        barRods: [
                          BarChartRodData(fromY: 0,toY: 3,width: 15,color: Colors.blue )]
                    ),
                    BarChartGroupData(
                        x: 1,
                        barRods: [
                          BarChartRodData(fromY: 0,toY: 5,width: 15,color: Colors.blue )]
                    ),
                  ]
              )),
            ),
          ],
               ),
             ],
           ),

    );
  }
}
