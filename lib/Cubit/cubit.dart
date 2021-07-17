

import 'package:bloc/bloc.dart';
import 'package:doctor_app/Cubit/states.dart';
import 'package:doctor_app/Models/Doctor.dart';
import 'package:doctor_app/Models/Place.dart';
import 'package:doctor_app/consts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  List<Doctor> doctorsList =[
    Doctor(
        "1",
        "Mohamed Allam",
        "Pediatric Surgeon",
        3.5,
        "$doctorDescription",
        "All days",
        "01129823747346",
        "Almonofia - menouf - kafr Bilmisht",
        PlaceLocation(longitude: 30.883219202085694, latitude: 30.44918226407256,),
      "$doctorImage",
    ),
    Doctor(
      "2",
      "Ahmed Allam",
      "Alpha Surgeon",
      2,
      "$doctorDescription",
      "All days",
      "01129823747346",
      "Almonofia - menouf - kafr Bilmisht",
      PlaceLocation(longitude: 33.883219202085694, latitude: 30.44918226407256,),
      "https://upload.wikimedia.org/wikipedia/commons/8/8e/G%C3%A9rald_KIERZEK_%28Cr%C3%A9dit_Ibo%29.jpg",
    ),
    Doctor(
      "3",
      "Mohamed Allam",
      "Pediatric Surgeon",
      3.5,
      "$doctorDescription",
      "All days",
      "01129823747346",
      "Almonofia - menouf - kafr Bilmisht",
      PlaceLocation(longitude: 30.883219202085694, latitude: 30.44918226407256,),
      "https://image.freepik.com/free-photo/portrait-smiling-handsome-male-doctor-man_171337-5055.jpg",
    ),
    Doctor(
      "4",
      "Ahmed Allam",
      "Alpha Surgeon",
      1,
      "$doctorDescription",
      "All days",
      "01129823747346",
      "Almonofia - menouf - kafr Bilmisht",
      PlaceLocation(longitude: 30.883219202085694, latitude: 30.44918226407256,),
      "https://media.istockphoto.com/photos/happy-healthcare-practitioner-picture-id138205019?k=6&m=138205019&s=612x612&w=0&h=yfaDH3lhHH0mf1ND67iTISh_ZvdAbMre91X0qr7jK2s=",
    ),
    Doctor(
      "5",
      "Mohamed Allam",
      "Pediatric Surgeon",
      2.5,
      "$doctorDescription",
      "All days",
      "01129823747346",
      "Almonofia - menouf - kafr Bilmisht",
      PlaceLocation(longitude: 30.883219202085694, latitude: 30.44918226407256,),
      "https://i.pinimg.com/originals/f9/13/05/f9130503f61225d775facb9047d7ca92.jpg",
    ),
    Doctor(
      "6",
      "Ahmed Allam",
      "Alpha Surgeon",
      5,
      "$doctorDescription",
      "All days",
      "01129823747346",
      "Almonofia - menouf - kafr Bilmisht",
      PlaceLocation(longitude: 30.883219202085694, latitude: 30.44918226407256,),
      "https://image.shutterstock.com/image-photo/young-handsome-doctor-man-clinic-260nw-1271532457.jpg",
    ),
  ];

  Doctor findById ( String id){
    return doctorsList.firstWhere((element) => element.id==id);
  }



}