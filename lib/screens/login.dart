import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Models/textField.dart';
import '../utils/color_utils.dart';
import 'Forget_password.dart';
import 'Signup.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _passwordTextController= TextEditingController();
  TextEditingController _emailTextController= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 5, 25, 2),
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
      body:
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32.0, 21, 32, 36),
          child: Column(
            children: [
              Text(
                'Welcome  Back!',
                style: GoogleFonts.montserrat(
                    color: appTheme.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 44),

              ),
              SizedBox(
                height: 38,
              ),
              reusableTextField(
                  text:"Username or Email",
                  icons: Icons.person,
                  isPasswordType: true,
                  controller: _emailTextController),
              SizedBox(
                height: 21,
              ),
              reusableTextField(
                text: 'Password',
                isPasswordType: true,
                controller: _passwordTextController,
                icon: Icons.remove_red_eye_outlined,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  TextButton(onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ForgetPassword(),));
                  }, child: Text('Forget Password?',
                    style: GoogleFonts.montserrat(
                        color:appTheme.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12
                    ),)),
                ],
              ),
              SizedBox(height: 10,),
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
                      child: Text('Login',
                        style: GoogleFonts.montserrat(
                            color:appTheme.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 21,),
              Center(
                child: Text('-OR Continue with-',
                  style: GoogleFonts.montserrat(
                      color:appTheme.slate,
                      fontWeight: FontWeight.w500,
                      fontSize: 12
                  ),),
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  appicon(image: 'assets/google.png',),
                  SizedBox(width: 7,),
                  appicon(image: 'assets/apple 1.png',),
                  SizedBox(width: 7,),
                  appicon(image: 'assets/facebook.png',),
                ],
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Create An Account',
                    style: GoogleFonts.montserrat(
                        color:appTheme.slate,
                        fontWeight: FontWeight.w400,
                        fontSize: 14
                    ),),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Signup(),));
                  }, child: Text('Sign Up',
                    style: GoogleFonts.montserrat(
                        decoration: TextDecoration.underline,
                        color:appTheme.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                    ),)),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
