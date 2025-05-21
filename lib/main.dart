import 'package:flutter/material.dart';
import 'package:proyec_sena/bloc/home_bloc.dart';

import 'package:proyec_sena/lib/bloc/home_bloc.dart';
import 'view /failure.dart';
import 'view /initial.dart';
import 'view /loading.dart';
import 'view /success.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return BlocProvider(
      create: (context) => SubjectBloc(),
      child: Container(),
      create: (context) => HomeBloc(),
      child: MaterialApp(
        title: 'futbol pro',
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadSuccess) {
              return success();
            } else if (state is HomeLoadInProgress) {
              return loading();
            } else if (state is HomeLoadFailure) {
              return failure();
            }
            return initial();
          },
        ),
      ),
    );
  }
}



