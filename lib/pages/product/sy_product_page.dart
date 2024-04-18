import 'package:flutter/material.dart';
import 'package:tesla/constans/assets_path.dart';
import 'package:tesla/pages/product/services/sy_fetchCategories.dart';
import 'package:tesla/pages/product/services/sy_fetchProducts.dart';
import 'package:tesla/pages/product/widgets/sy_categories_widget.dart';
import 'package:tesla/pages/product/widgets/sy_products_widget.dart';
import 'package:tesla/widgets/sy_text_widget.dart';

class SyProductPage extends StatelessWidget {
  const SyProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: SyTextWidget(
                  text: 'Browse by Categories',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FutureBuilder(
                future: fetchCategories(),
                builder: (context, snapshot) => snapshot.hasData
                    ? SyCategoriesWidget(categories: snapshot.data ?? [])
                    : Center(
                        child: Image(
                          image: AssetImage(GifPath.ripple),
                        ),
                      ),
              ),
              Divider(
                height: 2,
                color: Colors.grey.withOpacity(.3),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: SyTextWidget(
                  text: 'Recommands For You',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FutureBuilder(
                future: fetchProducts(),
                builder: (context, snapshot) => snapshot.hasData
                    ? SyProductsWidget(products: snapshot.data ?? [])
                    : Center(
                        child: Image(
                          image: AssetImage(GifPath.ripple),
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
