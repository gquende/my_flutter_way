import 'package:dartz/dartz.dart';
import 'package:way/layers/domain/entities/car_entity.dart';
import 'package:way/layers/domain/usecases/car_usecases/get_car_by_color_usecase.dart';

class CarController {
  GetCarByColorUsecase _getCarByColorUsecase;

  CarController(this._getCarByColorUsecase);

  Future<Either<Exception, CarEntity>> getCarByColor(String color) async {
    return await this._getCarByColorUsecase.getCarByColor(color);
  }
}
