import 'package:way/layers/domain/entities/car_entity.dart';
import 'package:way/layers/domain/repositories/car_repository.dart';

class GetCarByColorUsecase {
  CarRepository _carRepository;
  GetCarByColorUsecase(this._carRepository);

  CarEntity getCarByColor(String color) {
    return _carRepository(color);
  }
}
