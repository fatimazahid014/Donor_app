import 'package:flutter/material.dart';
import './../constants.dart';

class NewCard extends StatelessWidget {
  Widget widget;
  double cardHeight;

  NewCard({required this.widget, required this.cardHeight});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kCardColor,
      elevation: 5,
      shadowColor: const Color(0x55002636),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: SizedBox(
        height: cardHeight,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: widget,
        ),
      ),
    );
  }
}

class CardHeading extends StatelessWidget {
  String heading;

  CardHeading({
    Key? key,
    required this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
      child: Text(
        heading,
        textAlign: TextAlign.left,
        style: kTextStlye(
          FontWeight.normal,
          14.0,
          kSectionHeadingColor,
        ),
      ),
    );
  }
}
