import 'package:dio/dio.dart';
import 'package:flutter_case/models/player_screen_model.dart';
import 'package:flutter_case/screenInputs/play_screen_inputs.dart';
import 'package:flutter_case/screens/player_screen.dart';

Dio dio = Dio();

getData() async {
  PlayerScreenModel model = PlayerScreenModel();
  Response response = await dio.get(dioServiceLink);
  if (response.statusCode == 200) {
    model.name = response.data["name"];
    model.image = response.data["image"];
    model.status = response.data["status"];
  }

  print(model.image);
  return model;
}
