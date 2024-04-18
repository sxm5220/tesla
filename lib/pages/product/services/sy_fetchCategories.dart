import 'package:http/http.dart' as http;
import 'package:tesla/pages/product/models/sy_category.dart';

Future<List<SyCategory>> fetchCategories() async {
  const String apiUrl = "https://baidu.com";
  final response = await http.get(Uri.parse(apiUrl));
  List<SyCategory> categorys = [
    SyCategory(
        id: '1',
        title: 'Aloe Chair',
        image:
            "https://cdn.pixabay.com/photo/2016/10/18/20/18/international-1751293_1280.png",
        numOfProducts: 200),
    SyCategory(
        id: '1',
        title: 'Aloe Chair',
        image:
            "https://cdn.pixabay.com/photo/2017/05/18/15/25/wolf-2323884_1280.png",
        numOfProducts: 200),
    SyCategory(
        id: '1',
        title: 'Aloe Chair',
        image:
            "https://cdn.pixabay.com/photo/2016/10/18/20/18/international-1751293_1280.png",
        numOfProducts: 200),
    SyCategory(
        id: '1',
        title: 'Aloe Chair',
        image:
            "https://cdn.pixabay.com/photo/2017/05/18/15/25/wolf-2323884_1280.png",
        numOfProducts: 200)
  ];
  return categorys;
  /*if (response.statusCode == 200) {
    List<SyCategory> categorys = (json.decode(response.body) as List)
        .map((data) => SyCategory.fromJson(data))
        .toList();
    return categorys;
  } else {
    throw Exception('Failed to load..');
  }*/
}
