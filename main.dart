import 'package:apii/BlocCubitS/Cubit.dart';
import 'package:apii/BlocCubitS/MyStat.dart';
import 'package:apii/DeisinePage/MainPage.dart';
import 'package:apii/Net_Server/Weather_Server.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await MyDio.initDio();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    {
      return BlocProvider(
          create: (context) => MyCubit(),
          child: BlocConsumer<MyCubit, MyStat>(
            listener: (context, state) {},
            builder: (context, state) => MaterialApp(
              home: MainPage(),
            ),
          ));
    }
  }
}
