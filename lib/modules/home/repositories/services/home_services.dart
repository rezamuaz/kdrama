import 'package:dio/dio.dart';
import 'package:kdrama/modules/home/repositories/models/completed_model.dart';
import 'package:kdrama/modules/home/repositories/models/rekomendasi_model.dart';
import 'package:kdrama/modules/home/repositories/models/episode_terbaru_model.dart';
import 'package:kdrama/modules/home/repositories/models/result_error.dart';

class HomeServices {
  Future<List<RekomendasiModel>> getRecommendation() async {
    try {
      final response = await Dio()
          .get('https://my-json-server.typicode.com/rezamuaz/kdramaapi/db');
      if (response.statusCode == 200 && response.data.isNotEmpty) {
        return (response.data['rekomendasi'] as List)
            .map((e) => RekomendasiModel.fromJson(e))
            .toList();
      } else {
        throw ErrorEmptyResponse();
      }
    } catch (e) {
      throw ErrorGettingDrama('Gagal mendapatkan daftar drama');
    }
  }

  Future<List<EpisodeTerbaruModel>> getUpdateEpisode() async {
    try {
      Response response = await Dio()
          .get('https://my-json-server.typicode.com/rezamuaz/kdramaapi/db');
      if (response.statusCode == 200 && response.data.isNotEmpty) {
        return (response.data['update'] as List)
            .map((e) => EpisodeTerbaruModel.fromJson(e))
            .toList();
      } else {
        throw ErrorEmptyResponse();
      }
    } catch (e) {
      throw ErrorGettingDrama('Gagal mendapatkan daftar drama');
    }
  }

  Future<List<CompletedModel>> getCompleted() async {
    try {
      Response response = await Dio()
          .get('https://my-json-server.typicode.com/rezamuaz/kdramaapi/db');
      if (response.statusCode == 200 && response.data.isNotEmpty) {
        return (response.data['tamat'] as List)
            .map((e) => CompletedModel.fromJson(e))
            .toList();
      } else {
        throw ErrorEmptyResponse();
      }
    } catch (e) {
      throw ErrorGettingDrama('Gagal mendapatkan daftar drama');
    }
  }

  static Future<List<CompletedModel>> getbyId() async {
    try {
      Response response = await Dio()
          .get('https://my-json-server.typicode.com/rezamuaz/kdrama2/update/1');
      return (response.data['update'] as List)
          .map((e) => CompletedModel.fromJson(e))
          .toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
