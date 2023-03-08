import 'package:apii/BlocCubitS/Cubit.dart';
import 'package:apii/BlocCubitS/MyStat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../value.dart';
import 'Searching.dart';

class AfterSerch extends StatelessWidget {
  AfterSerch({Key? key}) : super(key: key);
  String? NmCite;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MyCubit()..GetDio(CityName: CityName),
        child: BlocConsumer<MyCubit, MyStat>(
            listener: (context, state) {},
            builder: (context, state) => Scaffold(
                backgroundColor: Colors.orange..shade100,
                appBar: AppBar(
                  backgroundColor: Colors.orange.shade100,
                ),
                body: BlocBuilder<MyCubit, MyStat>(builder: (context, state) {
                  if (state is lodingWeth) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is ScassWeth) {
                    return Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.orange,
                            Colors.white,
                          ],
                        )),
                        // color: Colors.orange.shade200,
                        width: double.infinity,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${MyCubit.get(context).weathemModel!.location!.name}',
                                style: TextStyle(
                                    fontSize: 53, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 23,
                              ),
                              Text(
                                  'The lastUpdated :${MyCubit.get(context).weathemModel!.current!.lastUpdated}',
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                height: 72,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (MyCubit.get(context)
                                          .weathemModel!
                                          .current!
                                          .condition!
                                          .text ==
                                      'Light rain')
                                    Image(
                                      color: Colors.black45,
                                      width: 100,
                                      height: 100,
                                      image: AssetImage(
                                        'image/img.png',
                                      ),
                                    ),
                                  if (MyCubit.get(context)
                                          .weathemModel!
                                          .current!
                                          .condition!
                                          .text ==
                                      'Clear')
                                    Image(
                                        color: Colors.black45,
                                        width: 100,
                                        height: 100,
                                        image: AssetImage('image/img_1.png')),
                                  if (MyCubit.get(context)
                                          .weathemModel!
                                          .current!
                                          .condition!
                                          .text ==
                                      'Sunny')
                                    Image(
                                        color: Colors.black45,
                                        width: 100,
                                        height: 100,
                                        image: AssetImage('image/img_2.png')),
                                  //Mist
                                  if (MyCubit.get(context)
                                          .weathemModel!
                                          .current!
                                          .condition!
                                          .text ==
                                      'Mist')
                                    Image(
                                        color: Colors.black45,
                                        width: 100,
                                        height: 100,
                                        image: AssetImage('image/img_2.png')),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    '${MyCubit.get(context).weathemModel!.forecast!.forecastday![0].day!.avgtempC}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 42),
                                  ),
                                  SizedBox(
                                    width: 22,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'MaxTem:${MyCubit.get(context).weathemModel!.forecast!.forecastday![0].day!.maxtempC}',
                                        style: TextStyle(
                                            //    fontWeight: FontWeight.bold,
                                            fontSize: 19,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        'MainTem:${MyCubit.get(context).weathemModel!.forecast!.forecastday![0].day!.mintempC}',
                                        style: TextStyle(
                                            //           fontWeight: FontWeight.bold,
                                            fontSize: 19,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 33,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 23,
                              ),
                              SizedBox(
                                height: 72,
                              ),
                              Text(
                                '${MyCubit.get(context).weathemModel!.current!.condition!.text}',
                                style: TextStyle(
                                    fontSize: 42, fontWeight: FontWeight.bold),
                              )
                            ]));
                  } else if (state is FailrWeth)
                    return Center(child: Text('Start Searching'));
                  else
                    return Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomLeft,
                              colors: [Colors.orange, Colors.white])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'there is no weatherrrr ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              IconButton(
                                  onPressed: () {
                                    // MyCubit.get(context).GetDio();
                                  },
                                  icon: Icon(
                                    Icons.face,
                                    color: Colors.yellow,
                                  ))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'start searching now',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SearchingPage() //idUdapat: Updat),
                                            ));
                                  },
                                  icon: const Icon(
                                    Icons.search_outlined,
                                    color: Colors.blue,
                                  ))
                            ],
                          )
                        ],
                      ),
                    );
                }))));
  }
}
