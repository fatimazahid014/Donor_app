import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './../constants.dart';

class ZakatCalculator extends StatelessWidget {
  static const id = 'zakaat_calculator';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
      child: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text("Zakaat Calculator",
                  style: kTextStlye(FontWeight.bold, 18, kTextColor)),
            ),
          ],
        ),
      ),
    );
  }
}
