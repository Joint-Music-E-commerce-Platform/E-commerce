import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Models/textField.dart';
import '../utils/color_utils.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _emailTextController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 5, 32, 2),
          child: Container(
            width: 290,
            height: 41,
            decoration: BoxDecoration(
                color: appTheme.black, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                'Joint Music And E commerce Platform',
                style: GoogleFonts.montserrat(
                    color: appTheme.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32.0, 22, 32, 36),
        child: Column(
          children: [
            Text(
              'Forget  Password!',
              style: GoogleFonts.montserrat(
                  color: appTheme.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 43),

            ),
            SizedBox(
              height: 22,
            ),
            reusableTextField(
                text:"Enter your email address",
                icons: Icons.email_sharp,
                isPasswordType: true,
                controller: _emailTextController),
            SizedBox(
              height: 22,
            ),
            Text.rich(TextSpan(
                children: [
                  TextSpan(text: "* ",
                    style: GoogleFonts.montserrat(
                        color:appTheme.red,
                        fontWeight: FontWeight.w400,
                        fontSize: 13
                    ),
                  ),
                  TextSpan(text: "We will send you a message to set or reset your new password",
                    style: GoogleFonts.montserrat(
                        color:appTheme.lush,
                        fontWeight: FontWeight.w400,
                        fontSize: 13
                    ),)
                ]
            )),
            SizedBox(
              height: 22,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                },
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                      color: appTheme.black,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child:Center(
                    child: Text('Submit',
                      style: GoogleFonts.montserrat(
                          color:appTheme.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
