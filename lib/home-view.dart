import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/Scanning3.dart';
import 'package:flutter_application_1/account_data.dart';
import 'package:flutter_application_1/add_figma/scanning.dart';
import 'package:flutter_application_1/add_figma/scanning2.dart';
import 'package:flutter_application_1/sensor.dart';
import 'package:flutter_application_1/showTimePicker%20function.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tflite/tflite.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  double percentage = 0.9;
  List<Sensor> sensor = [
    Sensor(
        name: 'Ph sensor',
        description:
            'It is a miniature computer with standard credit card dimensions ',
        reading: 0),
    Sensor(
        name: 'Soil moisture sensor',
        description:
            'It is a device for monitoring moisture levels in the soil',
        reading: 0),
    Sensor(
        name: 'Soil temperature sensor',
        description:
            'They are devices used to measure the temperature of the soil or ground.',
        reading: 0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal[400],
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ShowTimePickerApp(),
                  ));
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
          title: const Text(
            'sensor',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Account(),
                  ));
                },
                icon: const Icon(
                  Icons.account_circle_outlined,
                  size: 35,
                  color: Colors.white,
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            
             // ignore: use_build_context_synchronously
             showModalBottomSheet(
              
               context: context, builder: (context) => CameraGalleryPage(),);
            // Navigator.of(context).push(
                // MaterialPageRoute(builder: (context) => CameraGalleryPage()));
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            const Text(
              'IOT  Monitoring',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 225,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(children: [
                      Expanded(
                        child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Ph sensor',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                CircularPercentIndicator(
                                  radius: 140.0, // قطر الدائرة
                                  lineWidth:
                                      12.0, // عرض الخط الذي يحيط بالدائرة
                                  percent: percentage, // النسبة المئوية
                                  center: Text(
                                      "${(percentage * 100).toStringAsFixed(1)}%",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.greenAccent.shade400)),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  backgroundColor: Colors.grey,
                                  progressColor: Colors.greenAccent[400],
                                ),
                              ],
                            ))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Container(
                            height: 65,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'TEMPERATURE',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text(
                                      '73.1 F',
                                      style: TextStyle(
                                          color: Colors.redAccent[400],
                                          fontSize: 18),
                                    )
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 65,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'HUMDITY',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text(
                                      '45.8%',
                                      style: TextStyle(
                                          color: Colors.deepPurple[300],
                                          fontSize: 18),
                                    )
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 65,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'SUNLIGHT',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text(
                                      '236.1',
                                      style: TextStyle(
                                          color: Colors.amber[300],
                                          fontSize: 18),
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ))
                    ]),
                  )
                ],
              ),
            ),
            // CircularPercentIndicator(
            //   radius: 150.0, // قطر الدائرة
            //   lineWidth: 12.0, // عرض الخط الذي يحيط بالدائرة
            //   percent: percentage, // النسبة المئوية
            //   center: Text("${(percentage * 100).toStringAsFixed(1)}%",
            //       style: const TextStyle(fontSize: 20.0)),
            //   circularStrokeCap: CircularStrokeCap.round,
            //   backgroundColor: Colors.white,
            //   progressColor: Colors.green,
            // ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                  itemBuilder: (context, indexe) {
                    return Container(
                      alignment: Alignment.topLeft,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 12),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sensor : ${sensor[indexe].name}',
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'description of Sensor : ${sensor[indexe].description}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  'Sensor readers at the present time : ${sensor[indexe].reading}',
                                  style: const TextStyle(fontSize: 18),
                                ),
                              )
                            ]),
                      ),
                    );
                  },
                  separatorBuilder: (context, indexe) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: sensor.length),
            ))
          ],
        ));
  }
}
