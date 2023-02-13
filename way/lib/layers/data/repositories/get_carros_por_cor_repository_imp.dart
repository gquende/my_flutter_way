import 'package:way/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:way/layers/domain/entities/carro_entity.dart';
import 'package:way/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImpl implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;

  GetCarrosPorCorRepositoryImpl(this._getCarrosPorCorDataSource);

  @override
  CarroEntity call(String cor) {
    // TODO: implement call
    return _getCarrosPorCorDataSource(cor);
  }
}
