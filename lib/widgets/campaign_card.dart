import 'package:flutter/material.dart';
import 'package:donor_app/constants.dart';
import 'card_style_widget.dart';
import './../screens/campaign_info.dart';

class CampaignCard extends StatelessWidget {
  final String id;
  final String img;
  final String campaignHeading;
  final int raisedMoney;
  final int requiredMoney;

  CampaignCard({
    required this.id,
    required this.img,
    required this.campaignHeading,
    required this.raisedMoney,
    required this.requiredMoney,
  });

  void selectCampaign(BuildContext context) {
    Navigator.of(context).pushNamed(DonateNow.id, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return NewCard(
      cardHeight: 250.0,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage("images/$img"),
            width: 360,
            height: 150,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                campaignHeading,
                style: kTextStlye(
                  FontWeight.w600,
                  15.0,
                  kTextColor,
                ),
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 100, maxHeight: 40),
                child: OutlinedButton(
                  // Donate now Button
                  onPressed: () {
                    selectCampaign(context);
                  },
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      minimumSize: const Size(100, 25),
                      textStyle:
                          kTextStlye(FontWeight.bold, 13, kPrimaryColor)),
                  child: const Text("Donate now"),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  "Start helping by donating money, clothes, food, etc.",
                  style: kTextStlye(
                    FontWeight.w400,
                    12.0,
                    kTextColor,
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        "Raised: ",
                        style: kTextStlye(FontWeight.w400, 10, kTextColor),
                      ),
                      Text(
                        "Rs.$raisedMoney",
                        style:
                            kTextStlye(FontWeight.w600, 14, kSecondaryColor3),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
