class profileModel {
  late profileModel profile;

  List<Item> item = List.empty();
  Item getById(int id) =>
      item.firstWhere((element) => element.id == id, orElse: null);
  Item getByPosition(int pos) => item[pos];
}

class Item {
  final int id;
  final String image;

  Item(this.id, this.image);
}
