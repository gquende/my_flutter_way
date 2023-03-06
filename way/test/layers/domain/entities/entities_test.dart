import 'package:flutter_test/flutter_test.dart';
import 'package:way/layers/domain/entities/car_entity.dart';

main() {
  test("Create Car instance", () {
    var car =
        CarEntity(name: "Adolfo", color: "DED", qtdDoor: 4, price: 2000.0);
    expect(car.getPrice(), 4 * 2000);
    //expect(car, isNotNull);
  });
}
