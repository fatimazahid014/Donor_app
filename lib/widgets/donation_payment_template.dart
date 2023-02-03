import 'package:flutter/material.dart';
import './../models/campaign.dart';
import './../constants.dart';
import './../dummy_data.dart';
import 'text_field_card.dart';

class DonationAndPaymentTemplate extends StatelessWidget {
  DonationAndPaymentTemplate({
    required this.selectedCampaign,
    required this.childWidget,
    required this.route,
    required this.buttonText,
  });

  final Campaign selectedCampaign;
  final Widget childWidget;
  final String route;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    final campaignId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedCampaign =
        DUMMY_CAMPAIGNS.firstWhere((campaign) => campaign.id == campaignId);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  constraints: const BoxConstraints(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 5.0),
                  color: kTextColor,
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 16, left: 16, right: 16),
                  child: childWidget,
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: TextFieldCard(
                    isButton: true,
                    childWidget: Center(
                      child: TextButton(
                        child: Text(
                          buttonText,
                          style: kTextStlye(FontWeight.bold, 16, Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, route,
                              arguments: selectedCampaign.id);
                        },
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
