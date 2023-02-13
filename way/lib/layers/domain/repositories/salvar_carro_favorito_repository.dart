import 'package:way/layers/domain/entities/carro_entity.dart';

abstract class SalvarCarroFavoritosRepository {
  Future<bool> call(CarroEntity carroEntity);
}
