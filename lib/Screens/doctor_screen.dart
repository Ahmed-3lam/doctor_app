import 'package:doctor_app/Cubit/cubit.dart';
import 'package:doctor_app/Cubit/states.dart';
import 'package:doctor_app/Widgets/map_screen.dart';
import 'package:doctor_app/Widgets/common/Rate_Bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../consts.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);
  static const routeName = "/doctorScreen";

  @override
  Widget build(BuildContext context) {



    return  BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {

        },
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);
          var appSize = MediaQuery.of(context).size;
          final doctorId= ModalRoute.of(context)!.settings.arguments as String;
          final loadedDoctor = cubit.findById(doctorId);
          return Scaffold(
              floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
              appBar: AppBar(
                title: Text("${loadedDoctor.name}"),
                centerTitle: true,
              ),
              floatingActionButton: FloatingActionButton(

                child: Icon(Icons.call),

                onPressed: () {
                  launch("tel://${loadedDoctor.contact}");
                },
              ),
              body: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: appSize.height / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300]),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: appSize.width / 7,
                          backgroundImage: NetworkImage(
                            loadedDoctor.image,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "${loadedDoctor.name}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text("${loadedDoctor.specialization}"),
                        SizedBox(height: 5),
                        RatingBar(30,loadedDoctor.rating),
                        SizedBox(height: 5),
                        Text(
                          "${loadedDoctor.description}",
                          softWrap: true,
                          textDirection: TextDirection.rtl,
                          maxLines: 4,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: appSize.height / 9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${loadedDoctor.clinicTime}"),
                        SizedBox(
                          height: 5,
                        ),
                        Text("For Contact: ${loadedDoctor.contact}"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: appSize.height / 14,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300]),
                    child: Text("${loadedDoctor.address}"),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: appSize.height / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                    ),
                    child: MapScreen(initialLocation: loadedDoctor.placeLocation,),
                  ),
                ],
              )) ;
        },
      ),
    );
  }
}
