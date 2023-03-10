import 'package:way/layers/domain/entities/carro_entity.dart';
import 'package:way/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:way/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:way/layers/domain/usecases/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarrosPorCorUseCaseImp(this._getCarrosPorCorRepository);

  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
