import 'package:dartz/dartz.dart';
import 'package:way/layers/data/datasource/datasource.dart';
import 'package:way/layers/data/dto/car_dto.dart';
import 'package:way/layers/domain/entities/car_entity.dart';

class CarLocalDataSource extends DataSource {
  var json = {
    "name": "Adolfo Quende",
    "color": "white",
    "qtdDoor": 10,
    "price": 1000.0
  };

  var jsonRed = {
    "name": "Adolfo Quende",
    "color": "red",
    "qtdDoor": 10,
    "price": 1000.0
  };

  @override
  Future<Either<Exception, CarEntity>> call(String cor) async {
    // TODO: implement call
    try {
      if (cor.contains("white")) {
        return Right(CarDto.fromMap(json));
      } else {
        return Right(CarDto.fromMap(jsonRed));
      }
    } catch (error) {
      return Left(Exception("Error ao tentar buscar os dados..."));
    }
  }
}
