import 'dart:async';

import 'package:doctor_app/Screens/doctor_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'Screens/Doctors_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: DoctorsScreen(),
      routes: {
    DoctorScreen.routeName: (ctx) => DoctorScreen()
    },
    );
  }
}
