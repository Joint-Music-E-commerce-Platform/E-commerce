import 'package:flutter/material.dart';

import '../utils/color_utils.dart';
import 'Get_started.dart';



class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  Future<void> Splashscreen() async{
    await  Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GetStarted(),));
  }
  @override
  void initState() {
    Splashscreen();
    super.initState();

  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Image(image: AssetImage('assets/Frame 33.png'))),
      bottomSheet:Container(
        height: 5,
        width: 134,
        decoration: BoxDecoration(
            color: appTheme.grey,
            borderRadius: BorderRadius.circular(23)
        ),
      ) ,
    );
  }
}
