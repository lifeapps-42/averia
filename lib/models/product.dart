import 'dart:math';

class Product {
  final String name;
  final String id;
  final String picUrl;

  factory Product.random() {
    int _collectionIndex = _getRangomCollectionIndex();
    return Product._fromCollection(_collectionIndex);
  }
  Product._fromCollection(int index)
      : id = Random().nextInt(2^16).toString(),
        name = _localProductsCollection[index]['name']!,
        picUrl = _localProductsCollection[index]['picUrl']!;

  static int _getRangomCollectionIndex() =>
      Random().nextInt(_localProductsCollection.length);

  static const List<Map<String, String>> _localProductsCollection = [
    {
      'name': 'Coca-cola',
      'picUrl': 'https://clipart-db.ru/file_content/rastr/cocacola_027.png',
    },
    {
      'name': 'Pringles',
      'picUrl':
          'https://static-sl.insales.ru/images/products/1/4014/394686382/1857b73b089942b2518cbe1c3c55-sc-l.png',
    },
    {
      'name': 'Red Bull',
      'picUrl':
          'https://www.vipservicemarket.ru//upload/iblock/371/Red-Bull.png',
    },
    {
      'name': 'Borjomi',
      'picUrl':
          'https://www.borjomi.com/ua/borjoming-frontend/img/can_NY.png',
    },
    {
      'name': 'Fanta',
      'picUrl': 'https://pngimg.com/uploads/fanta/fanta_PNG17.png',
    },
    {
      'name': 'Sprite',
      'picUrl':
          'https://www.coca-cola.com.sg/content/dam/journey/sg/en/private/brands/heros/Sprite19_MYSG_250mL_SlimCan_598x336.png',
    },
    {
      'name': 'Lay\'s',
      'picUrl':
          'https://www.pngkey.com/png/full/62-623561_lays-classic-potato-chips-packet-png-image-family.png',
    },
    {
      'name': 'Baltika zero',
      'picUrl':
          'https://amwine.ru/upload/iblock/7a6/7a6b4e514fc8e7d7eaa9ce3d5a22fade.png',
    },
  ];
}
