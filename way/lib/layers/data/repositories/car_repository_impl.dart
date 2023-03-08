import 'package:way/layers/data/datasource/datasource.dart';
import 'package:way/layers/data/datasource/local/car_local_datasource.dart';
import 'package:way/layers/data/dto/car_dto.dart';
import 'package:way/layers/domain/entities/car_entity.dart';
import 'package:way/layers/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  DataSource _dataSource = CarLocalDataSource();

  CarRepositoryImpl(this._dataSource);
  @override
  Future<CarEntity> call(String color) async {
    return await _dataSource(color);
  }
}
