import 'package:donor_app/screens/ongoing_campaigns.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';
import './../constants.dart';
import './../widgets/card_style_widget.dart';
import './../widgets/categories.dart';
import './../widgets/campaign_card.dart';
import 'campaign_info.dart';

class DonorDashboard extends StatefulWidget {
  static const id = 'dashboard';

  @override
  State<DonorDashboard> createState() => _DonorDashboardState();
}

class _DonorDashboardState extends State<DonorDashboard> {
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Zakaat": 5,
      "Flood Relief": 3,
      "Sadaqa": 2,
    };

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     const Icon(
            //       Icons.menu,
            //       color: kTextColor,
            //     ),
            //     Text(
            //       "Donor Dashboard",
            //       style: GoogleFonts.inter(
            //         textStyle: const TextStyle(
            //           color: kTextColor,
            //           fontSize: kMainHeadingSize,
            //         ),
            //         fontWeight: kMainFontWeight,
            //       ),
            //     ),
            //     Icon(
            //       Icons.notifications,
            //       color: kTextColor,
            //     ),
            //   ],
            // ),
            CardHeading(
              heading: "Statistics",
            ),
            NewCard(
              cardHeight: 190.0,
              widget: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Amount Donated",
                        style: kTextStlye(
                          FontWeight.w500,
                          12.0,
                          kTextColor,
                        ),
                      ),
                      Text(
                        "Rs. 25000",
                        style: kTextStlye(
                          kMainFontWeight,
                          22.0,
                          kTextColor,
                        ),
                      ),
                      PieChart(
                        dataMap: dataMap,
                        colorList: const [
                          Color(0xff3292E7),
                          Color(0xffFF3F3F),
                          Color(0xffF79124),
                        ],
                        chartType: ChartType.ring,
                        chartRadius: 90,
                        chartLegendSpacing: 110,
                        legendOptions: LegendOptions(
                          legendPosition: LegendPosition.left,
                          legendTextStyle:
                              kTextStlye(FontWeight.w600, 12, kTextColor),
                          legendShape: BoxShape.circle,
                        ),
                        chartValuesOptions: const ChartValuesOptions(
                          showChartValues: false,
                          showChartValueBackground: false,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Categories(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardHeading(
                  heading: "Ongoing Campaigns",
                ),
                Container(
                  constraints:
                      const BoxConstraints(maxWidth: 100, maxHeight: 35),
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {
                      Navigator.pushNamed(context, OngoingCampaigns.id);
                    },
                    child: Text(
                      "View all",
                      style: kTextStlye(
                        FontWeight.w500,
                        14.0,
                        kTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CampaignCard(
              id: 'c1',
              img: "flood.jpg",
              campaignHeading: "Flood Relief Campaign",
              requiredMoney: 65000,
              raisedMoney: 35000,
            ),
          ]),
        ),
      ),
    );
  }
}
