import 'package:http/http.dart' as http;

import '../models/sy_product.dart';

Future<List<SyProduct>> fetchProducts() async {
  const String apiUrl = "https://baidu.com";
  final response = await http.get(Uri.parse(apiUrl));
  List<SyProduct> products = [
    SyProduct(
        id: "1",
        price: 1600,
        title: "Wood Frame",
        image:
            "https://cdn.pixabay.com/photo/2016/10/18/20/18/international-1751293_1280.png",
        category: "Chair",
        subTitle: "Tieton Armchair",
        description:
            "hhhhh...Exploring the wonders of nature and engaging in fantastic outdoor activities can be truly thrilling. However, the outdoor adventures often encounter challenges, like muscle fatigue on long treks, carrying heavy gear through rough terrain, keeping pace with seasoned adventurers, and overcoming some physical barrieres. These obstacles may ruin the enjoyment of experiencing the nature's marvels."),
    SyProduct(
        id: "2",
        price: 1600,
        title: "Wood Frame",
        image:
            "https://cdn.pixabay.com/photo/2017/05/18/15/25/wolf-2323884_1280.png",
        category: "Chair",
        subTitle: "Tieton Armchair",
        description: "hhhhh..."),
    SyProduct(
        id: "3",
        price: 1600,
        title: "Wood Frame",
        image:
            "https://cdn.pixabay.com/photo/2016/10/18/20/18/international-1751293_1280.png",
        category: "Chair",
        subTitle: "Tieton Armchair",
        description: "hhhhh..."),
    SyProduct(
        id: "4",
        price: 1600,
        title: "Wood Frame",
        image:
            "https://cdn.pixabay.com/photo/2017/05/18/15/25/wolf-2323884_1280.png",
        category: "Chair",
        subTitle: "Tieton Armchair",
        description: "hhhhh..."),
  ];
  return products;
  /*if (response.statusCode == 200) {
    List<SyCategory> categorys = (json.decode(response.body) as List)
        .map((data) => SyCategory.fromJson(data))
        .toList();
    return products;
  } else {
    throw Exception('Failed to load..');
  }*/
}
