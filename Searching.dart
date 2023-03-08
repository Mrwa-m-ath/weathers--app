import 'dart:ui';

import 'package:apii/BlocCubitS/Cubit.dart';
import 'package:apii/BlocCubitS/MyStat.dart';
import 'package:apii/DeisinePage/homePageAfterSearch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../value.dart';

class SearchingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyCubit(),
      child: BlocConsumer<MyCubit, MyStat>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange.shade100,
            title: Text('Search a City'),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                child: TextField(
                  onSubmitted: (data) async {
                    CityName = data;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AfterSerch(),
                        ));
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(22),
                      hintText: ('Enter City Name'),
                      label: Text('Search'),
                      border: OutlineInputBorder(
                          gapPadding: 22.1,
                          borderRadius: BorderRadius.all(Radius.circular(3.0)),
                          borderSide: BorderSide(
                              color: Colors.orange,
                              width: 19.2,
                              style: BorderStyle.solid)),
                      suffixIcon: GestureDetector(
                        onTap: () async {
                          print('');

                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.search,
                        ),
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
