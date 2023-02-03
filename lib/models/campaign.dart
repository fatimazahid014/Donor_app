import 'package:flutter/material.dart';

class Campaign {
  final String id;
  final String img;
  final String campaignHeading;
  final int raisedMoney;
  final int requiredMoney;
  final String city;

  const Campaign({
    required this.id,
    required this.img,
    required this.raisedMoney,
    required this.requiredMoney,
    required this.campaignHeading,
    required this.city,
  });
}
