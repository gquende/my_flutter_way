import 'package:way/layers/domain/entities/car_entity.dart';
import 'package:way/layers/domain/repositories/car_repository.dart';

class GetCarByColorUsecase {
  CarRepository _carRepository;
  GetCarByColorUsecase(this._carRepository);

  Future<CarEntity> getCarByColor(String color) async {
    return await _carRepository(color);
  }
}
