import 'package:get_it/get_it.dart';
import 'package:way/layers/data/datasource/datasource.dart';
import 'package:way/layers/data/datasource/local/car_local_datasource.dart';
import 'package:way/layers/data/repositories/car_repository_impl.dart';
import 'package:way/layers/domain/repositories/car_repository.dart';
import 'package:way/layers/domain/usecases/car_usecases/get_car_by_color_usecase.dart';
import 'package:way/layers/presenter/controllers/car_controller.dart';

class Inject {
  static init() {
    var getIt = GetIt.I;
    getIt.registerLazySingleton<DataSource>(() => CarLocalDataSource());
    getIt
        .registerLazySingleton<CarRepository>(() => CarRepositoryImpl(getIt()));
    getIt.registerLazySingleton<GetCarByColorUsecase>(
        () => GetCarByColorUsecase(getIt()));
    getIt.registerFactory<CarController>(() => CarController(getIt()));
  }
}
