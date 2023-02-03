import 'dart:ui';

import 'package:donor_app/screens/landing_page.dart';
import 'package:donor_app/screens/login_signup/phone.dart';
import 'package:donor_app/screens/login_signup/signup.dart';
import 'package:donor_app/screens/login_signup/verify.dart';
import 'package:donor_app/screens/volunteer/find_volunteer.dart';
import 'package:firebase_core/firebase_core.dart';

import './dummy_data.dart';
import './screens/donate_money/choose_donation_amount.dart';
import './screens/dashboard.dart';
import './screens/donation_history.dart';
import 'screens/login_signup/login.dart';
import './screens/donate_money/select_payment_method.dart';
import './screens/user_profile.dart';
import './screens/zakaat_calculator.dart';
import 'package:flutter/material.dart';
import 'navigation/navigation_bar.dart';
import './screens/ongoing_campaigns.dart';
import './screens/campaign_info.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(DonorApp());
}

class DonorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LandingPage.id,
      routes: {
        NavBar.id: (context) => NavBar(),
        DonorDashboard.id: (context) => DonorDashboard(),
        DonationHistory.id: (context) => DonationHistory(),
        ZakatCalculator.id: (context) => ZakatCalculator(),
        UserProfile.id: (context) => UserProfile(),
        LandingPage.id: (context) => LandingPage(),
        LoginScreen.id: (context) => LoginScreen(),
        OngoingCampaigns.id: (context) => OngoingCampaigns(DUMMY_CAMPAIGNS),
        DonateNow.id: (context) => DonateNow(),
        SelectPaymentMethod.id: (context) => SelectPaymentMethod(),
        ChooseDonationAmount.id: (context) => ChooseDonationAmount(),
        FindVolunteer.id: (context) => FindVolunteer(),
        SignupScreen.id: (context) => SignupScreen(),
        Phone.id: (context) => Phone(),
        Verify.id: (context) => Verify(),
      },
    );
  }
}
