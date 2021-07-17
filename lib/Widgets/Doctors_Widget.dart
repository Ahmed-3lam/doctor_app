



import 'package:bloc/bloc.dart';
import 'package:doctor_app/Cubit/cubit.dart';
import 'package:doctor_app/Models/Doctor.dart';
import 'package:doctor_app/Screens/doctor_screen.dart';
import 'package:doctor_app/Widgets/common/Rate_Bar.dart';
import 'package:flutter/material.dart';


import '../consts.dart';
class DoctorsItemBuilder extends StatelessWidget {
  final int index;


  DoctorsItemBuilder(this.index);

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
final Doctor doctor ;
    var doctorsList =  cubit.doctorsList;
    return GestureDetector(
      onTap: (){
        Navigator.of( context).pushNamed(
          DoctorScreen.routeName,
          arguments: doctorsList[index].id,

        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("${doctorsList[index].image}",
              ),
              radius:   30,
            ),

            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("${doctorsList[index].name}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                  ),

                ),
                Text("${doctorsList[index].specialization}",style: TextStyle(color: Colors.grey),),
                RatingBar(20,doctorsList[index].rating)


              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios,color: Colors.blue,),
          ],
        ),
      ),
    );
  }
}



