import 'package:way/layers/domain/entities/carro_entity.dart';
import 'package:way/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

import '../../repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritosRepository _carroFavoritosRepository;

  SalvarCarroFavoritoUseCaseImp(this._carroFavoritosRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    // TODO: implement call
    //bool result = false;

    return await _carroFavoritosRepository(carroEntity);
    throw UnimplementedError();
  }
}
