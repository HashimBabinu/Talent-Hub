import 'package:flutter/material.dart';
import 'package:flutter_application_1/COMMON/login.dart';
import 'package:flutter_application_1/COMMON/splash.dart';


class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Container(
             height:400,
             width:200,
            child:InkWell(
    onTap: () {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
       return Mypage();
     }));
    },
            child: Image.asset("picture/logo.png"))),
      ));
  }
}