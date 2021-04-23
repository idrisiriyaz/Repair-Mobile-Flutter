import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/widget/colors.dart';

// import 'package:mobile/widget/submit_details.dart';
class ProceedDetails extends StatelessWidget {
  const ProceedDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
      child: Column(
        children: [
          TextField(
              cursorColor: CustomColor.secondaryColor,
              decoration: InputDecoration(
                focusedBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: CustomColor.secondaryColor),
                ),
                labelText: 'Select Issue',
                suffix: DropdownButton(
                  items: [],
                ),
                labelStyle: TextStyle(color: CustomColor.secondaryColor),
              ),
              style: GoogleFonts.poppins(color: CustomColor.secondaryColor)),
          TextField(
              cursorColor: CustomColor.secondaryColor,
              decoration: InputDecoration(
                suffix: DropdownButton(
                  items: [],
                ),
                focusedBorder: new UnderlineInputBorder(
                    borderSide:
                        new BorderSide(color: CustomColor.secondaryColor)),
                labelText: 'Select Problem',
                labelStyle: TextStyle(color: CustomColor.secondaryColor),
              ),
              style: GoogleFonts.poppins(color: CustomColor.secondaryColor)),
          TextField(
              cursorColor: CustomColor.secondaryColor,
              decoration: InputDecoration(
                focusedBorder: new UnderlineInputBorder(
                    borderSide:
                        new BorderSide(color: CustomColor.secondaryColor)),
                labelText: 'Otherwise',
                labelStyle: TextStyle(color: CustomColor.secondaryColor),
              ),
              style: GoogleFonts.poppins(color: CustomColor.secondaryColor)),
          TextField(
              cursorColor: CustomColor.secondaryColor,
              decoration: InputDecoration(
                focusedBorder: new UnderlineInputBorder(
                    borderSide:
                        new BorderSide(color: CustomColor.secondaryColor)),
                labelText: 'Suggestion',
                labelStyle: TextStyle(color: CustomColor.secondaryColor),
              ),
              style: GoogleFonts.poppins(color: CustomColor.secondaryColor)),
          SizedBox(height: 40),
          TextButton(
              onPressed: () {
                Get.toNamed('/proceed');
              },
              style: TextButton.styleFrom(
                backgroundColor: CustomColor.secondaryColor,
                primary: CustomColor.primaryColor,
                padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
              ),
              child: Text('Proceed',
                  style: GoogleFonts.poppins(
                    color: CustomColor.primaryColor,
                    fontSize: 20,
                  ))),
        ],
      ),
    );
  }
}
