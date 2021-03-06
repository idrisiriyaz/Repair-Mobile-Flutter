import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/screens/signin.dart';
import 'package:mobile/widget/colors.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColor.primaryColor,
        title: Text(
          'Sign up',
          style: GoogleFonts.poppins(color: CustomColor.secondaryColor),
        ),
      ),
      body: Stack(children: [
        SvgPicture.asset('assets/back.svg',
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            width: 700,
            height: 700),
        Center(
          child: Container(
            padding: EdgeInsets.all(50),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                      cursorColor: CustomColor.secondaryColor,
                      decoration: InputDecoration(
                          focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: CustomColor.secondaryColor)),
                          labelText: 'Email or Phone',
                          labelStyle:
                              TextStyle(color: CustomColor.secondaryColor),
                          suffixIcon: Icon(
                            Icons.person,
                            color: CustomColor.secondaryColor,
                            size: 15,
                          )),
                      style: GoogleFonts.poppins(
                          color: CustomColor.secondaryColor)),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                      obscureText: true,
                      cursorColor: CustomColor.secondaryColor,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: CustomColor.secondaryColor)),
                          focusColor: CustomColor.secondaryColor,
                          labelStyle:
                              TextStyle(color: CustomColor.secondaryColor),
                          suffixIcon: Icon(
                            Icons.lock_open_outlined,
                            color: CustomColor.secondaryColor,
                            size: 15,
                          )),
                      style: GoogleFonts.poppins(
                          color: CustomColor.secondaryColor)),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                      obscureText: true,
                      cursorColor: CustomColor.secondaryColor,
                      decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: CustomColor.secondaryColor)),
                          focusColor: CustomColor.secondaryColor,
                          labelStyle:
                              TextStyle(color: CustomColor.secondaryColor),
                          suffixIcon: Icon(
                            Icons.lock,
                            color: CustomColor.secondaryColor,
                            size: 15,
                          )),
                      style: GoogleFonts.poppins(
                          color: CustomColor.secondaryColor)),
                  SizedBox(
                    height: 60,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: CustomColor.secondaryColor,
                        primary: CustomColor.primaryColor,
                        padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                      ),
                      child: Text('Register',
                          style: GoogleFonts.poppins(
                            color: CustomColor.primaryColor,
                            fontSize: 20,
                          ))),
                  SizedBox(height: 50),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have account',
                            style: GoogleFonts.poppins(
                              color: CustomColor.secondaryColor,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                            child: Text("Log In",
                                style: GoogleFonts.poppins(
                                    color: CustomColor.secondaryColor,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold)),
                            onTap: () {
                              Get.offAll(SignIn());
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
