import 'package:flutter/material.dart';
import 'package:ballascorp/screens/home.dart';
import 'package:ballascorp/utils/GlobalColors.dart';

class CutiPage extends StatefulWidget {
  const CutiPage({Key? key}) : super(key: key);

  @override
  State<CutiPage> createState() => _CutiPageState();
}

class _CutiPageState extends State<CutiPage> {
  @override
  Widget build(BuildContext context) {
    double deviceheight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    double devicewidth(BuildContext context) =>
        MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                    borderRadius: BorderRadius.circular(15),
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      child: const Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: const Text('Form cuti',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white)))
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 10, bottom: 20),
                            child: Text('Berikan alasanmu mengambil cuti',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: GlobalColors.ballas02))),
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
                                          width: 2.0,
                                          color: GlobalColors.warning04),
                                      borderRadius:
                                          new BorderRadius.circular(12),
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
                                            color: GlobalColors.primary02),
                                        borderRadius:
                                            new BorderRadius.circular(12),
                                        color: GlobalColors.primary01,
                                      ),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sisa cuti',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            '11',
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
                          margin: EdgeInsets.only(bottom: 20),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Subjek',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      '11/10',
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
                                  'Tanggal',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              )
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: const Text('Upload surat cuti',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white)),
                                ),
                                Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(top: 20),
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.description_outlined),
                                      label: Text('Download template cuti'),
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(15),
                                        foregroundColor: Colors.white,
                                        backgroundColor: GlobalColors.primary03,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    )),
                                Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(top: 20),
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.file_upload_outlined),
                                      label: Text('Pilih dokumen'),
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(15),
                                        foregroundColor: Colors.white,
                                        backgroundColor: GlobalColors.success02,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    )),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: devicewidth(context),
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: Text('Submit'),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            foregroundColor: GlobalColors.ballas05,
                            textStyle: TextStyle(
                                color: GlobalColors.ballas05,
                                fontWeight: FontWeight.bold)),
                      )),
                ],
              )),
        ));
  }
}
