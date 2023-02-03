import 'package:donor_app/dummy_data.dart';
import 'package:donor_app/screens/campaign_info.dart';
import 'package:flutter/material.dart';
import './../constants.dart';
import './../widgets/campaign_card.dart';
import '../models/campaign.dart';

class OngoingCampaigns extends StatefulWidget {
  static const id = 'ongoing_campaigns';

  final List<Campaign> ongoingCampaigns;

  OngoingCampaigns(this.ongoingCampaigns);

  @override
  State<OngoingCampaigns> createState() => _OngoingCampaignsState();
}

class _OngoingCampaignsState extends State<OngoingCampaigns> {
  late String campaignTitle;
  late List<Campaign> displayedCampaigns;
  var _loadedInitData = false;

  @override
  void initState() {
    // ...
    super.initState();
  }

  // void didChangeDependencies() {
  //   if (!_loadedInitData) {
  //     // final campArgs = ModalRoute.of(context)!.settings.arguments;
  //     // campaignTitle = campArgs['campaignHeading']!;
  //     final campaignId = ModalRoute.of(context)!.settings.arguments as String;
  //     displayedCampaigns = DUMMY_CAMPAIGNS
  //         .where((campaign) => campaign.id == campaignId)
  //         .toList();
  //     _loadedInitData = true;
  //   }
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text("Campaigns"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      backgroundColor: const Color(0xffF6FAFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
        child: SafeArea(
          child: ListView.builder(
            itemCount: DUMMY_CAMPAIGNS.length,
            itemBuilder: (BuildContext context, int index) {
              return CampaignCard(
                id: DUMMY_CAMPAIGNS[index].id,
                img: DUMMY_CAMPAIGNS[index].img,
                campaignHeading: DUMMY_CAMPAIGNS[index].campaignHeading,
                raisedMoney: DUMMY_CAMPAIGNS[index].raisedMoney,
                requiredMoney: DUMMY_CAMPAIGNS[index].raisedMoney,
              );
            },
          ),
        ),
      ),
    );
  }
}
