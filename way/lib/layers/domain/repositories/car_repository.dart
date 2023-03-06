import 'package:way/layers/domain/entities/car_entity.dart';

abstract class CarRepository {
  CarEntity call(String color);
}
