import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Models/textField.dart';
import '../utils/color_utils.dart';
import 'login.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _passwordTextController= TextEditingController();
  TextEditingController _emailTextController= TextEditingController();
  TextEditingController _usernameTextController= TextEditingController();
  TextEditingController _countryTextController= TextEditingController();
  TextEditingController _numberTextController= TextEditingController();
  TextEditingController _confirmTextController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(20.0,5,25,2),
          child: Container(
            width: 290,
            height: 41,
            decoration: BoxDecoration(
                color: appTheme.black,
                borderRadius: BorderRadius.circular(20)
            ),
            child:Center(
              child: Text('Joint Music And E commerce Platform',
                style: GoogleFonts.montserrat(
                    color:appTheme.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 13
                ),),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0,5,25,1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create An Account',
                style: GoogleFonts.montserrat(
                    color:appTheme.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16
                ),),
              Text('Be sure to provide correct details',
                style: GoogleFonts.montserrat(
                    color:appTheme.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                ),),
              SizedBox(height: 10,),
              reusableTextField(
                controller: _usernameTextController,
                text:"Create Username",
                isPasswordType:   false, ),
              SizedBox(height: 17,),
              reusableTextField(
                  text: "Enter Your Email ",
                  isPasswordType:  true,
                  controller: _emailTextController),
              SizedBox(height: 17,),
              reusableTextField(
                  text: "Select Country",
                  icon:  Icons.keyboard_arrow_down_rounded,
                  isPasswordType:false,
                  controller: _countryTextController),
              SizedBox(height: 17,),
              reusableTextField(
                  text: "Phone Number",
                  isPasswordType: false,
                  controller: _numberTextController),
              SizedBox(height: 17,),
              reusableTextField(
                  text:"Password",
                  isPasswordType: true,
                  controller: _passwordTextController),
              SizedBox(height: 17,),
              reusableTextField(
                  text:"Confirm Password",
                  isPasswordType: true,
                  controller: _confirmTextController),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.camera_alt_outlined,
                    color: appTheme.black,
                    size: 24,)),
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.add_photo_alternate_outlined,
                    color: appTheme.black,
                    size: 24,)),
                ],
              ),
              Center(
                child: Text('Add a picture',
                  style: GoogleFonts.montserrat(
                      color:appTheme.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 13
                  ),),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    width: 245,
                    height: 55,
                    decoration: BoxDecoration(
                        color: appTheme.black,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:Center(
                      child: Text('Create Account',
                        style: GoogleFonts.montserrat(
                            color:appTheme.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                        ),),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text('-OR Continue with-',
                  style: GoogleFonts.montserrat(
                      color:appTheme.slate,
                      fontWeight: FontWeight.w500,
                      fontSize: 12
                  ),),
              ),
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
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login(),));
                  }, child: Text('Login',
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

class appicon extends StatelessWidget {
  final String image;
  const appicon({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 54,
      width: 55,
      decoration: BoxDecoration(
          color: appTheme.blush,
          borderRadius: BorderRadius.circular(39),
          border: Border.all(width: 1,color: appTheme.black)
      ),
      child: Image(image: AssetImage(image)),
    );
  }
}
