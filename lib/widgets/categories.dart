import 'package:flutter/material.dart';
import './../constants.dart';
import 'card_style_widget.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardHeading(
          heading: "Categories",
        ),
        SizedBox(
          height: 40,
          child: ListView(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                CategoryButton(
                  width: 100,
                  label: "Zakaat",
                  color: kPrimaryColor,
                ),
                CategoryButton(
                    width: 100, color: kSecondaryColor3, label: "Sadaqa"),
                CategoryButton(
                    width: 110, color: kSecondaryColor2, label: "Campagins"),
                CategoryButton(
                    width: 100, color: kSecondaryColor1, label: "Others"),
              ]),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class CategoryButton extends StatelessWidget {
  Color color;
  String label;
  double width;

  CategoryButton(
      {required this.width, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(0),
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: const Alignment(-0.9, 2),
                  colors: [
                    color.withOpacity(0.3),
                    color,
                    color,
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Container(
              constraints: BoxConstraints(maxWidth: width, maxHeight: 40),
              alignment: Alignment.center,
              child: Text(
                label,
                style: kTextStlye(FontWeight.bold, 12, Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
