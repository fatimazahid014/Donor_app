import 'package:flutter/material.dart';

class FindVolunteer extends StatelessWidget {
  static const id = 'find_volunteer';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("Finding a Volunteer ..."),
          ],
        ),
      ),
    );
  }
}
