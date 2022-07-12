import 'package:dio/dio.dart';
import 'package:kdrama/modules/player_page/repository/model/player_model.dart';

class PlayerServices {
  Future<PlayerModel> getDetail() async {
    try {
      Response response = await Dio()
          .get('https://my-json-server.typicode.com/rezamuaz/episode/db');
      return PlayerModel.fromJson(response.data['detail']);
    } catch (e) {
      throw Exception('error log${e.toString()}');
    }
  }
}
