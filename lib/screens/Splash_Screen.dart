import 'package:flutter/material.dart';
import 'package:triplite_task/screens/screen_2.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),  ()  {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Screen_2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF35454),
      body: Center(child: Image.asset("assets/Image/Logo White.png")),
    );
  }
}


