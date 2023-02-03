import 'package:donor_app/screens/donate_money/choose_donation_amount.dart';
import 'package:donor_app/screens/volunteer/find_volunteer.dart';
import 'package:donor_app/widgets/text_field_card.dart';
import 'package:flutter/material.dart';
import 'package:donor_app/constants.dart';
import '../../widgets/donation_payment_template.dart';
import 'package:donor_app/dummy_data.dart';

import 'choose_donation_amount.dart';

class SelectPaymentMethod extends StatefulWidget {
  static const id = 'select_payment_method';

  @override
  State<SelectPaymentMethod> createState() => _SelectPaymentMethodState();
}

class _SelectPaymentMethodState extends State<SelectPaymentMethod> {
  late int _selectedRadio = -1;

  @override
  void initState() {
    _selectedRadio = -1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final campaignId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedCampaign =
        DUMMY_CAMPAIGNS.firstWhere((campaign) => campaign.id == campaignId);

    return DonationAndPaymentTemplate(
      selectedCampaign: selectedCampaign,
      route: _selectedRadio != 4 ? ChooseDonationAmount.id : FindVolunteer.id,
      buttonText: "Confirm",
      childWidget: Column(
        children: [
          Text(
            "Select Payment Method",
            style: kTextStlye(FontWeight.bold, 16, kTextColor),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedRadio = 1;
                  });
                },
                child: TextFieldCard(
                  isButton: false,
                  childWidget: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Easypaisa Account",
                          style: kTextStlye(FontWeight.normal, 14, kTextColor),
                        ),
                        Radio(
                          value: 1,
                          groupValue: _selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              _selectedRadio = int.parse(value.toString());
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedRadio = 2;
                  });
                },
                child: TextFieldCard(
                  isButton: false,
                  childWidget: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Easypaisa Account",
                          style: kTextStlye(FontWeight.normal, 14, kTextColor),
                        ),
                        Radio(
                          value: 2,
                          groupValue: _selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              _selectedRadio = int.parse(value.toString());
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedRadio = 3;
                  });
                },
                child: TextFieldCard(
                  isButton: false,
                  childWidget: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Easypaisa Account",
                          style: kTextStlye(FontWeight.normal, 14, kTextColor),
                        ),
                        Radio(
                          value: 3,
                          groupValue: _selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              _selectedRadio = int.parse(value.toString());
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0x3f000000),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0x3f000000),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedRadio = 4;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kSecondaryColor3,
                    ),
                    color: (_selectedRadio == 4) ? kSecondaryColor3 : null,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Find a Volunteer",
                        style: kTextStlye(
                          FontWeight.w500,
                          16,
                          (_selectedRadio == 4)
                              ? Colors.white
                              : kSecondaryColor3,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
