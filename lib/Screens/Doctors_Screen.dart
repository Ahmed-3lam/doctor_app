import 'package:doctor_app/Cubit/cubit.dart';
import 'package:doctor_app/Cubit/states.dart';
import 'package:doctor_app/Widgets/Doctors_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {

        },
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              title: Text("Doctors"),
              centerTitle: true,

            ),

            body: ListView.separated(
                itemBuilder: (context,index)=>DoctorsItemBuilder(index),
                separatorBuilder:(context,index)=> Divider(),
                itemCount: cubit.doctorsList.length)
            ,
          );
        },
      ),
    );
  }
}
