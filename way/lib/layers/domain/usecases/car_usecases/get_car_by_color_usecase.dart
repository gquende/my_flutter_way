import 'package:dartz/dartz.dart';
import 'package:way/layers/domain/entities/car_entity.dart';
import 'package:way/layers/domain/repositories/car_repository.dart';

class GetCarByColorUsecase {
  CarRepository _carRepository;
  GetCarByColorUsecase(this._carRepository);

  Future<Either<Exception, CarEntity>> getCarByColor(String color) async {
    return await _carRepository(color);
  }

  /*
  Future<CarEntity> getCarByColor(String color) async {
    return await _carRepository(color);
  }*/
}
