import 'package:dartz/dartz.dart';

import '../../domain/entities/car_entity.dart';

abstract class DataSource {
  Future<Either<Exception, CarEntity>> call(String cor);
}
