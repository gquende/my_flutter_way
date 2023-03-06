class CarEntity {
  String name;
  String color;
  int qtdDoor;
  double price;

  CarEntity(
      {required this.name,
      required this.color,
      required this.qtdDoor,
      required this.price});

  double getPrice() {
    return this.qtdDoor * this.price;
  }
}
