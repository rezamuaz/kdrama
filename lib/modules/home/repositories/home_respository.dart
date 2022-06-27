import 'package:kdrama/modules/home/repositories/models/completed_model.dart';
import 'package:kdrama/modules/home/repositories/models/episode_terbaru_model.dart';
import 'package:kdrama/modules/home/repositories/models/rekomendasi_model.dart';
import 'package:kdrama/modules/home/repositories/services/home_services.dart';

class HomeRepository {
  const HomeRepository({required this.service});
  final HomeServices service;

  Future<List<RekomendasiModel>> getRecommendation() async =>
      service.getRecommendation();
  Future<List<EpisodeTerbaruModel>> getUpdateEpisode() async =>
      service.getUpdateEpisode();
  Future<List<CompletedModel>> getCompleted() async => service.getCompleted();
}
