import 'package:flutter/material.dart';
import 'package:ballascorp/screens/login.dart';
import 'package:ballascorp/utils/GlobalColors.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  _navigateToLogin() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    double deviceheight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: deviceheight(context) * 0.4),
              height: 150,
              width: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/BallasPutih.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Column(
                  children: [
                    Container(
                      child: Text('Powered By',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: GlobalColors.ballas02)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 27,
                      width: 18,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/BallasPutih.png'),
                              fit: BoxFit.fill)),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
