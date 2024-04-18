class SyCategory {
  final String id, title, image;
  final int numOfProducts;

  SyCategory({
    required this.id,
    required this.title,
    required this.image,
    required this.numOfProducts,
  });

  factory SyCategory.fromJson(Map<String, dynamic> json) {
    return SyCategory(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        numOfProducts: json['numOfProducts']);
  }
}

SyCategory category = SyCategory(
    id: '1',
    title: 'Aloe Chair',
    image:
        "https://images.steelcase.net.cn/image/upload/c_fill,q_auto,f_auto,h_1350,w_2400/v1631850944/www.steelcase.com/asia-en/2021/09/17/21-0165520.jpg",
    numOfProducts: 200);
