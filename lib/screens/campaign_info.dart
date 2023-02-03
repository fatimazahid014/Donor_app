import 'package:donor_app/dummy_data.dart';
import 'package:donor_app/screens/ongoing_campaigns.dart';
import 'package:donor_app/screens/donate_money/select_payment_method.dart';
import 'package:donor_app/widgets/card_style_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/donation_payment_template.dart';
import './../constants.dart';

class DonateNow extends StatefulWidget {
  static const id = "campaign_info";

  @override
  State<DonateNow> createState() => _DonateNowState();
}

class _DonateNowState extends State<DonateNow> {
  @override
  Widget build(BuildContext context) {
    final campaignId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedCampaign =
        DUMMY_CAMPAIGNS.firstWhere((campaign) => campaign.id == campaignId);

    return DonationAndPaymentTemplate(
      selectedCampaign: selectedCampaign,
      route: SelectPaymentMethod.id,
      buttonText: "Donate Now",
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NewCard(
            cardHeight: 250,
            widget: Image(
              image: AssetImage('images/${selectedCampaign.img}'),
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                selectedCampaign.campaignHeading,
                style: kTextStlye(
                  kMainFontWeight,
                  18.0,
                  kTextColor,
                ),
              ),
              Text(
                'Rs. ${selectedCampaign.requiredMoney}',
                style: kTextStlye(kMainFontWeight, 18, kPrimaryColor),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          LinearProgressIndicator(
            value: selectedCampaign.raisedMoney /
                selectedCampaign
                    .requiredMoney, // The current progress of the loading. A value between 0 and 1.
            backgroundColor:
                Colors.grey[300], // The background color of the loading bar
            valueColor: const AlwaysStoppedAnimation<Color>(
                kSecondaryColor3), // The color of the filled portion of the loading bar
            minHeight: 12,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Raised: Rs.${selectedCampaign.raisedMoney}',
                style: kTextStlye(FontWeight.w600, 12, kTextColor),
              ),
              Text(
                'Left: Rs.${selectedCampaign.requiredMoney}',
                style: kTextStlye(FontWeight.w600, 12, kTextColor),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "About",
            style: kTextStlye(FontWeight.bold, 14, kTextColor),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Campaign Description.",
            style: kTextStlye(
              FontWeight.normal,
              14,
              kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
