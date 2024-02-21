import 'package:flutter/material.dart';
import 'package:ballascorp/utils/GlobalColors.dart';
import 'package:table_calendar/table_calendar.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: const Text('Rekap tahunan',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))),
              Container(
                margin: EdgeInsets.only(bottom: 20),
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
                                width: 2.0, color: GlobalColors.warning04),
                            borderRadius: new BorderRadius.circular(12),
                            color: GlobalColors.warning01,
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  width: 2.0, color: GlobalColors.danger04),
                              borderRadius: new BorderRadius.circular(12),
                              color: GlobalColors.danger02,
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                            ))),
                  ],
                ),
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
              ),
              Container(
                  margin: EdgeInsets.only(top: 25, bottom: 10),
                  child: const Text('Detail cuti',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))),
              Container(
                  width: devicewidth(context),
                  padding: EdgeInsetsDirectional.symmetric(
                      vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: GlobalColors.warning04),
                    borderRadius: new BorderRadius.circular(12),
                    color: GlobalColors.warning02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          'Senin, 9 Januari 2024',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: const Text(
                          'Acara keluarga dan bla bla bla wkdaufh bla kad nbwuaidojak',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
