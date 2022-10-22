import 'package:blood_donation_app/login.dart';
import 'package:blood_donation_app/splash.dart';
import 'package:blood_donation_app/survey.dart';
import 'package:blood_donation_app/booking.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/booking',
    routes: {
      '/': (context) => Splash(),
      '/login': (context) => Login(),
      '/survey': (context) => Survey(),
      '/booking': (context) => Booking(),
    },
  ));
}