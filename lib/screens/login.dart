import 'package:flutter/material.dart';
import 'package:ballascorp/main.dart';
import 'package:ballascorp/utils/GlobalColors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double deviceheight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    double devicewidth(BuildContext context) =>
        MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: deviceheight(context) * 0.1),
              child: Column(
                children: [
                  Container(
                    width: devicewidth(context),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 90,
                            width: 60,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/BallasPutih.png'),
                                    fit: BoxFit.fill)),
                          )
                        ]),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 60),
                      width: devicewidth(context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: const Text('Hai, selamat datang kembali',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white))),
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text('Masuk dan isi daftar kehadiranmu!',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: GlobalColors.ballas02))),
                          Container(
                              margin: EdgeInsets.only(top: 40),
                              child: const Text('NIP',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white))),
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 10),
                              decoration: BoxDecoration(
                                  color: GlobalColors.ballas03,
                                  borderRadius: BorderRadius.circular(50)),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                    prefixIcon: Icon(
                                      Icons.mail_outline_rounded,
                                      color: Colors.white,
                                    ),
                                    hintText: 'Masukan NIP mu',
                                    hintStyle: TextStyle(
                                        color: GlobalColors.ballas02)),
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 30),
                              child: const Text('Password',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white))),
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 10),
                              decoration: BoxDecoration(
                                  color: GlobalColors.ballas03,
                                  borderRadius: BorderRadius.circular(50)),
                              child: TextField(
                                obscureText: true,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                    prefixIcon: Icon(
                                      Icons.lock_outline_rounded,
                                      color: Colors.white,
                                    ),
                                    hintText: 'Masukan password mu',
                                    hintStyle: TextStyle(
                                        color: GlobalColors.ballas02)),
                              )),
                        ],
                      )),
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
                        builder: (context) => const MainNavigator(),
                      ),
                    );
                  },
                  child: Text('Masuk'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      foregroundColor: GlobalColors.ballas05,
                      textStyle: TextStyle(
                          color: GlobalColors.ballas05,
                          fontWeight: FontWeight.bold)),
                )),
          ],
        ),
      ),
    );
  }
}
