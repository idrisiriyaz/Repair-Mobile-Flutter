import 'package:flutter/material.dart';
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
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Home',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  ListTile(
                    leading: Text('About'),
                  ),
                  ListTile(
                    leading: Text('Version'),
                    subtitle: Text('1.0'),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
