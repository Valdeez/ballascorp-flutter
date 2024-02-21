import 'package:flutter/material.dart';
import 'package:ballascorp/utils/GlobalColors.dart';

class NotifPage extends StatefulWidget {
  const NotifPage({Key? key}) : super(key: key);

  @override
  State<NotifPage> createState() => _NotifPageState();
}

const List<String> listTgl = <String>[
  'Februari 2024',
  'Maret 2024',
  'April 2024',
  'Mei 2024'
];

class _NotifPageState extends State<NotifPage> {
  String dropdownValue = listTgl.first;

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
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: devicewidth(context),
                margin: EdgeInsets.only(top: 15, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: DropdownButton<String>(
                  isExpanded: true,
                  dropdownColor: GlobalColors.ballas05,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  value: dropdownValue,
                  underline: Container(
                    height: 0,
                  ),
                  elevation: 16,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: listTgl.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(
                        child: Text(
                          value,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.all(8),
              //   margin: EdgeInsets.only(top: 15, bottom: 20),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     border: Border.all(
              //       color: Colors.white,
              //       width: 1,
              //     ),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         'Oktober 2023',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 18,
              //         ),
              //       ),
              //       Icon(
              //         Icons.arrow_drop_down,
              //         color: Colors.white,
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                width: devicewidth(context),
                child: Wrap(
                  runSpacing: 10,
                  children: [
                    _notifWidget('Rabu, 11 Oktober 2023', '08.00',
                        'Ayo isi absenmu sekarang juga!'),
                    _notifWidget('Selasa, 10 Oktober 2023', '14.00',
                        'Waktu menjelang sore, segera isi absenmu!'),
                    _notifWidget('Selasa, 10 Oktober 2023', '08.00',
                        'Ayo isi absenmu sekarang juga!'),
                    _notifWidget('Senin, 09 Oktober 2023', '08,00',
                        'Ayo isi absenmu sekarang juga!!'),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget _notifWidget(String dateText, String timeText, String infoText) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(vertical: 15, horizontal: 15),
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
                  dateText,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Text(
                  timeText,
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
              infoText,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: GlobalColors.ballas02),
            ),
          )
        ],
      ),
    );
  }
}
