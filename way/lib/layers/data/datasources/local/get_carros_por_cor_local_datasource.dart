import 'package:way/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:way/layers/data/dto/carro_dto.dart';

class GetCarrosPorCorLocalDataSource implements GetCarrosPorCorDataSource {
  var jsonVermelho = {
    'placa': 'XDOE',
    'quantidadeDePortas': 19,
    'valorFinal': 2.5
  };

  var jsonAny = {
    'placa': 'this.placa',
    'quantidadeDePortas': 19,
    'valorFinal': 2.5
  };

  @override
  CarroDto call(String cor) {
    if (cor.contains("Vermelho")) return CarroDto.fromMap(jsonVermelho);
    return CarroDto.fromMap(jsonAny);
  }
}
