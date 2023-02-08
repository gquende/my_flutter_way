import 'package:way/layers/domain/entities/carro_entity.dart';
import 'package:way/layers/domain/usecases/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  @override
  CarroEntity call(String cor) {
    // TODO: implement call
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: "dwd", qtdPortas: 2, valor: 4000.00);
    }
    return CarroEntity(placa: "NOP", qtdPortas: 6, valor: 2000.00);
  }
}
