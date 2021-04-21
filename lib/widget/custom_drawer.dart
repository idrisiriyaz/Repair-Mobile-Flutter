import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/widget/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Center(
          child: Container(
              color: CustomColor.secondaryColor,
              child: ListView(
                children: [
                  CircleAvatar(child: Image.network("url")),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'User Nme',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'About',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Version',
                      style: GoogleFonts.poppins(),
                    ),
                    subtitle: Text(
                      '1.0',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.offAllNamed('/');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: CustomColor.primaryColor,
                        primary: CustomColor.secondaryColor,
                        padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                      ),
                      child: Text('Logout',
                          style: GoogleFonts.poppins(
                            color: CustomColor.secondaryColor,
                            fontSize: 20,
                          )))
                ],
              )),
        ),
      ),
    );
  }
}
