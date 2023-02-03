import 'package:donor_app/widgets/donation_payment_template.dart';
import 'package:flutter/material.dart';

class ChooseDonationAmount extends StatelessWidget {
  static const id = "choose_donation_amount";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("Choose Amount"),
          ],
        ),
      ),
    );
  }
}
