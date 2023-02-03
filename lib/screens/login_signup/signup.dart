import 'package:donor_app/constants.dart';
import 'package:donor_app/screens/login_signup/phone.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  static const id = 'signup';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String signup = "Sign Up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(),
                    Image(
                      image: AssetImage('images/Sabeel_logo.png'),
                      width: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  signup,
                  style: kTextStlye(FontWeight.bold, 20, kTextColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "We need to register your phone to get started!",
                  style: kTextStlye(FontWeight.w500, 14, kTextColor),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                InputTextField(
                  hintText: "Enter your name",
                  keyboardType: TextInputType.text,
                  hideText: false,
                  onChanged: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                InputTextField(
                  hintText: "Enter Password",
                  keyboardType: TextInputType.text,
                  hideText: true,
                  onChanged: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                InputTextField(
                  hintText: "Confirm Password",
                  keyboardType: TextInputType.text,
                  hideText: true,
                  onChanged: () {},
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.pushNamed(context, Phone.id);
                      },
                      child: Text("Next")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputTextField extends StatelessWidget {
  late String hintText;
  late bool hideText;
  late Function onChanged;
  late TextInputType keyboardType;

  InputTextField({
    required this.hintText,
    required this.keyboardType,
    required this.onChanged,
    required this.hideText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: kSectionHeadingColor),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        obscureText: hideText,
        keyboardType: keyboardType,
        onChanged: (value) {
          onChanged();
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
