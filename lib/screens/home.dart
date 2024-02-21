import 'package:flutter/material.dart';
import 'package:ballascorp/screens/cuti.dart';
import 'package:ballascorp/utils/GlobalColors.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    double deviceheight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    double devicewidth(BuildContext context) =>
        MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: const Text('Selamat datang Lekuking',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white))),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Ayo cek dan lengkapi daftar kehadiranmu!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: GlobalColors.ballas02))),
              Container(
                  margin: EdgeInsets.only(top: 25, bottom: 10),
                  child: const Text('Rekap',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                                margin: EdgeInsets.only(right: 5),
                                padding: EdgeInsetsDirectional.symmetric(
                                    vertical: 10.0, horizontal: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2.0,
                                      color: GlobalColors.success03),
                                  borderRadius: new BorderRadius.circular(12),
                                  color: GlobalColors.success01,
                                ),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kehadiran',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '7',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                          ),
                          Expanded(
                              flex: 5,
                              child: Container(
                                  margin: EdgeInsets.only(left: 5),
                                  padding: EdgeInsetsDirectional.symmetric(
                                      vertical: 10, horizontal: 15),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: GlobalColors.warning04),
                                    borderRadius: new BorderRadius.circular(12),
                                    color: GlobalColors.warning01,
                                  ),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Cuti',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        '1',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ],
                                  )))
                        ],
                      ),
                    ),
                    Container(
                        width: devicewidth(context),
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsetsDirectional.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.0, color: GlobalColors.danger04),
                          borderRadius: new BorderRadius.circular(12),
                          color: GlobalColors.danger02,
                        ),
                        child: const Column(
                          children: [
                            Text(
                              'Absen',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Text(
                              '4',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 10),
                child: const Text('Absensi',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ),
              Container(
                width: devicewidth(context),
                padding: EdgeInsetsDirectional.symmetric(
                    vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(12),
                  color: GlobalColors.ballas04,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text('Rabu, 11 Oktober 2023',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                      Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: ElevatedButton(
                            onPressed: pressed
                                ? null
                                : () {
                                    setState(() {
                                      pressed = !pressed;
                                    });
                                  },
                            child: pressed ? Text('Done') : Text('Isi Absen'),
                            style: pressed
                                ? ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(15),
                                    onSurface: GlobalColors.success03,
                                    textStyle: TextStyle(
                                        color: GlobalColors.ballas05,
                                        fontWeight: FontWeight.bold))
                                : ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(15),
                                    foregroundColor: GlobalColors.ballas05,
                                    textStyle: TextStyle(
                                        color: GlobalColors.ballas05,
                                        fontWeight: FontWeight.bold)),
                          )),
                      Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              color: GlobalColors.ballas04,
                              border:
                                  Border.all(width: 2.0, color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const CutiPage(),
                                ),
                              );
                            },
                            child: Text('Cuti'),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(15),
                                backgroundColor: GlobalColors.ballas04,
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          )),
                    ]),
              ),
              Container(
                  margin: EdgeInsets.only(top: 25, bottom: 10),
                  child: const Text('Agenda',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))),
              Container(
                width: devicewidth(context),
                child: Wrap(
                  runSpacing: 10,
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.symmetric(
                          vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(12),
                        color: GlobalColors.ballas04,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Senin, 17 Oktober 2023',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  '09.00',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'Meeting bulanan hagfyagfagvu afgyagfyagy tafag ygdaygsu vtafgy agcvag tfstayg',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: GlobalColors.ballas02),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.symmetric(
                          vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(12),
                        color: GlobalColors.ballas04,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Senin, 17 Oktober 2023',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  '12.00',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'Meeting bulanan hagfyagfagvu afgyagfyagy tafag ygdaygsu vtafgy agcvag tfstayg',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: GlobalColors.ballas02),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 25, bottom: 10),
                  child: const Text('Kalender',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))),
              Container(
                width: devicewidth(context),
                padding: EdgeInsetsDirectional.symmetric(
                    vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(12),
                  color: GlobalColors.ballas04,
                ),
                child: Column(
                  children: [
                    TableCalendar(
                      headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                          leftChevronIcon:
                              Icon(Icons.chevron_left, color: Colors.white),
                          rightChevronIcon:
                              Icon(Icons.chevron_right, color: Colors.white),
                          titleTextStyle:
                              TextStyle(color: Colors.white, fontSize: 20)),
                      firstDay: DateTime.utc(2024, 1, 1),
                      lastDay: DateTime.utc(2024, 12, 31),
                      focusedDay: DateTime.now(),
                      calendarStyle: CalendarStyle(
                        outsideDaysVisible: false,
                        weekendTextStyle: TextStyle(color: Colors.grey),
                        defaultTextStyle: TextStyle(color: Colors.white),
                        todayDecoration: BoxDecoration(
                          color: GlobalColors.success02,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
