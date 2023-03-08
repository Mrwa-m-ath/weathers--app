import 'package:apii/BlocCubitS/MyStat.dart';
import 'package:apii/Net_Server/Weather_Server.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modeljosn/WeatherModel.dart';

class MyCubit extends Cubit<MyStat> {
  MyCubit() : super(Init());

  static MyCubit get(context) => BlocProvider.of(context);

  //key=af5c346e89b449dcbee210756222012&q=London&days=1&aqi=no&alerts=no
  // WeathemModel? weathemModel;
  // List<Map> Artical = [];
  WeathemModel? weathemModel;
  String? CityName;

  void GetDio({CityName}) async {
    emit(lodingWeth());
    MyDio.getDio(path: 'v1/forecast.json', quare: {
      'key': 'af5c346e89b449dcbee210756222012',
      'q': CityName,
      'days': '1',
    }).then((value) async {
      //  Artical = value.data['location'];
      weathemModel = WeathemModel.fromJson(value.data);
      print(weathemModel!.location!.name);
      print(weathemModel!.current!.condition!.text);

      emit(ScassWeth());
      print('aaa');
    }).catchError((onError) {
      emit(FailrWeth());
      print(onError.toString());
    });
  }
}
