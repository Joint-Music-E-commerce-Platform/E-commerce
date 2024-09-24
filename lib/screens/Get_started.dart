import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/color_utils.dart';
import 'Signup.dart';


class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: true,
        right: true,
        child: Stack(
          children: [
            Image(image: AssetImage('assets/unsplash.png'),
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 210,
              left: 19,
              right: 19,
              child: Text("Welcome To Momenstock Your"
                  " All In One App "
                  "For Music And E - commerce Platform",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  decorationColor: appTheme.black,
                  color: appTheme.white,

                ),),
            ),
            Positioned(
              top: 520,
              left: 19,
              right: 19,
              child: Center(
                child: Text('Find your favorite music, play  it now!',
                  style: GoogleFonts.montserrat(
                      color: appTheme.milky,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),),
              ),
            ),
            Positioned(
              top: 550,
              left: 19,
              right: 19,
              child: Center(
                child: Text('Find it here, buy it now!',
                  style: GoogleFonts.montserrat(
                      color: appTheme.milky,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),),
              ),
            ),
            Positioned(
              top: 610,
              left: 19,
              right: 19,
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Signup(),));
              },style: ButtonStyle(fixedSize: WidgetStatePropertyAll(Size(279, 55)),
                backgroundColor:WidgetStatePropertyAll(appTheme.black,),
              ),
                  child:
                  Text('Let’s Get You Started',
                    style: GoogleFonts.montserrat(
                        color:appTheme.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 23
                    ),)
              ),
            ),

          ],
        ),
      ),
    );
  }
}
