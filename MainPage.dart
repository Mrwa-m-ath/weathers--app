//
import 'package:apii/BlocCubitS/MyStat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../BlocCubitS/Cubit.dart';
import 'Searching.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MyCubit()..GetDio(),
        child: BlocConsumer<MyCubit, MyStat>(
            listener: (context, state) {},
            builder: (context, state) => Scaffold(
                  //      backgroundColor: Colors.orange.shade400,
                  appBar: AppBar(
                    backgroundColor: Colors.orange.shade100,
                    // backgroundColor: Provider.of<WeatherProvider>(context)
                    //     .weatherData!
                    //     .getweatherColor(),
                    title: Text('WeatherSand  '),
                    actions: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchingPage(),
                                ));
                          },
                          icon: Icon(
                            Icons.search_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  body: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            end: Alignment.topLeft,
                            begin: Alignment.bottomLeft,
                            colors: [Colors.white, Colors.orange])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'there is no weather ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            IconButton(
                              onPressed: () {
                                MyCubit.get(context).GetDio();
                              },
                              icon: Icon(Icons.face),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Started Searching',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),

                            //3fddd913a8d7487f8abea832bf16fe5e
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SearchingPage() //idUdapat: Updat),
                                          ));
                                },
                                icon: Icon(
                                  Icons.search_outlined,
                                  color: Colors.blue,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                )));
  }
}
//MyCubit.get(context) .weathemModel==null?
//   Column(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text(
// //                     'there is no weather ',
// //                     style: TextStyle(
// //                         fontWeight: FontWeight.bold, fontSize: 19),
// //                   ),
// //                   Icon(
// //                     Icons.face,
// //                     color: Colors.yellow,
// //                   )
// //                 ],
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text(
// //                     'start searching now',
// //                     style: TextStyle(
// //                         fontWeight: FontWeight.bold, fontSize: 19),
// //                   ),
// //                   IconButton(
// //                       onPressed: () {
// //                         Navigator.push(
// //                             context,
// //                             MaterialPageRoute(
// //                                 builder: (context) =>
// //                                     SearchingPage() //idUdapat: Updat),
// //                             ));
// //                       },
// //                       icon: Icon(
// //                         Icons.search_outlined,
// //                         color: Colors.blue,
// //                       ))
// //                 ],
// //               )
// //             ],
// //           ),
// //         )
