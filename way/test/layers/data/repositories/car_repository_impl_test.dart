import 'package:flutter_test/flutter_test.dart';
import 'package:way/layers/data/datasource/local/car_local_datasource.dart';
import 'package:way/layers/data/repositories/car_repository_impl.dart';
import 'package:way/layers/domain/repositories/car_repository.dart';

main() {
  CarLocalDataSource dataSource = CarLocalDataSource();
  CarRepository repository = CarRepositoryImpl(dataSource);

  test("Testing get any car color", () {
    var car = repository("any");
    expect(car, isNotNull);
  });
}
