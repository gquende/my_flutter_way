import 'package:dartz/dartz.dart';
import 'package:way/layers/domain/entities/car_entity.dart';

abstract class CarRepository {
  Future<Either<Exception, CarEntity>> call(String color);
}
