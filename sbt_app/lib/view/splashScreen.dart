import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sbt_app/view/Login/loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool gms, hms;
  var osType;

  @override
  void initState() {
    super.initState();
    checkToken();
  }

  var contentData;

  checkPhoneType() {
    if (Platform.isAndroid) {
      if (gms = true) {
        setState(() {
          osType = "ANDROID";
        });
      } else {
        setState(() {
          osType = "HUAWEI";
        });
      }
    } else if (Platform.isIOS) {
      setState(() {
        osType = "IOS";
      });
    }
  }

   checkToken() async{
    
      Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginPage()
          )
        )
      );

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image(
              image: AssetImage("assets/icons/logo.png"),
              height: MediaQuery.of(context).size.width/3,
              width: MediaQuery.of(context).size.width/3,
            ),
            Spacer(
              flex: 2,
            ),
            SizedBox(height: 50,)
          ],
        ),
      )      
    );
  }
}