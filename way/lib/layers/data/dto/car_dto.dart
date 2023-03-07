import 'package:flutter/material.dart';
import 'package:way/layers/domain/entities/car_entity.dart';

class CarDto extends CarEntity {
  String? name;
  String? color;
  int? qtdDoor;
  double? price;

  CarDto({required this.name, this.color, this.qtdDoor, this.price})
      : super(name: name, color: color, qtdDoor: qtdDoor, price: price);

  static CarDto fromMap(Map<String, dynamic> map) {
    return CarDto(
        color: map['color'],
        qtdDoor: map['qtdDoor'],
        name: map['name'],
        price: map['price']);
  }

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "color": this.color,
      "qtdDoor": this.qtdDoor,
      "price": this.price
    };
  }
}
