import 'dart:math';

import 'package:donor_app/constants.dart';
import 'package:donor_app/screens/login_signup/login.dart';
import 'package:donor_app/screens/login_signup/signup.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  static const id = 'landing_page';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool _isDonorSelected = true;
  String _description = '';
  late String _image = '';

  String donor = "Donor";
  String beneficiary = 'Beneficiary';
  String donorDescription =
      "A Donor gives money, goods, or time to support a cause, charity, or another person in need.";
  String beneficiaryDescription =
      "A Beneficiary receives benefits, such as money, goods, or services, from another person or organization.";

  String login = 'Log In';
  String signup = 'Sign Up';

  @override
  void initState() {
    _description = donorDescription;
    _image = 'images/donation_box.png';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
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
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: kLightPrimaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isDonorSelected = true;
                                _description = donorDescription;
                                _image = 'images/donation_box.png';
                              });
                            },
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 130,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    color:
                                        _isDonorSelected ? kPrimaryColor : null,
                                  ),
                                  child: Center(
                                    child: Text(donor,
                                        style: kTextStlye(
                                          FontWeight.w600,
                                          14,
                                          _isDonorSelected
                                              ? kBackgroundColor
                                              : kTextColor,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isDonorSelected = false;
                                _description = beneficiaryDescription;
                                _image = 'images/donation_box.png';
                              });
                            },
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 130,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    color:
                                        _isDonorSelected ? null : kPrimaryColor,
                                  ),
                                  child: Center(
                                    child: Text(beneficiary,
                                        style: kTextStlye(
                                          FontWeight.w600,
                                          14,
                                          _isDonorSelected
                                              ? kTextColor
                                              : kBackgroundColor,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      _image,
                      height: 180,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      _description,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
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
                            Navigator.pushNamed(context, LoginScreen.id);
                          },
                          child: Text(
                            login,
                            style: kTextStlye(
                                FontWeight.bold, 14, kBackgroundColor),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: kLightPrimaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            Navigator.pushNamed(context, SignupScreen.id);
                          },
                          child: Text(
                            signup,
                            style:
                                kTextStlye(FontWeight.bold, 14, kPrimaryColor),
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
