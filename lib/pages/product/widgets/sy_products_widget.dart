import 'package:flutter/material.dart';
import 'package:tesla/pages/product/widgets/sy_productCard_widget.dart';

import '../../../route/sy_route.dart';
import '../../../utils/sy_navigator.dart';
import '../models/sy_product.dart';

class SyProductsWidget extends StatelessWidget {
  const SyProductsWidget({super.key, required this.products});
  final List<SyProduct> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: .693,
        ),
        itemBuilder: (context, index) => SyProductCardWidget(
            product: products[index],
            onTap: () {
              SyNavigator.toNamed(SyRoute.getCardDetailPage(),
                  arguments: [products[index]]);
            }),
      ),
    );
  }
}
