import 'package:kdrama/modules/player_page/repository/model/player_model.dart';
import 'package:kdrama/modules/player_page/repository/services/player_page_services.dart';

class PlayerRepository {
  const PlayerRepository({required this.service});
  final PlayerServices service;

  Future<PlayerModel> getDetail() async => service.getDetail();
}
