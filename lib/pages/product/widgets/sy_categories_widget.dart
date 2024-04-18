import 'package:flutter/cupertino.dart';
import 'package:tesla/pages/product/widgets/sy_categoryCard_widget.dart';

import '../models/sy_category.dart';

class SyCategoriesWidget extends StatelessWidget {
  const SyCategoriesWidget({super.key, required this.categories});
  final List<SyCategory> categories;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length,
            (index) => SyCategoryCardWidget(category: categories[index])),
      ),
    );
  }
}
