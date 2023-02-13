import 'package:flutter_test/flutter_test.dart';
import 'package:way/layers/data/dto/carro_dto.dart';
import 'package:way/layers/domain/entities/carro_entity.dart';
import 'package:way/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImpl extends GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    var json = {
      'placa': 'this.placa',
      'quantidadeDePortas': 19,
      'valorFinal': 2.5
    };

    return CarroDto.fromMap(json);
  }
}

main() {
  GetCarrosPorCorRepository? repository = GetCarrosPorCorRepositoryImpl();
  test('Devolva um carro independente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
