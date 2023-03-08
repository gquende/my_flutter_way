import '../../domain/entities/car_entity.dart';

abstract class DataSource {
  Future<CarEntity> call(String cor);
}
