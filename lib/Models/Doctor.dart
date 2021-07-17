import 'package:doctor_app/Models/Place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Doctor   {
  final String id;
  final String name;
  final String image;
  final String specialization;
  final double rating;
  final String description;
  final String clinicTime;
  final String contact;
  final String address;
  final PlaceLocation placeLocation;

  Doctor(this.id, this.name, this.specialization, this.rating, this.description,
      this.clinicTime, this.contact, this.address, this.placeLocation, this.image);

}