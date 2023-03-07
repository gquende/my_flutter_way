import 'package:way/layers/domain/entities/car_entity.dart';

abstract class CarRepository {
  Future<CarEntity> call(String color);
}
