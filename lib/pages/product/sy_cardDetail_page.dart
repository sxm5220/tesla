import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tesla/constans/assets_path.dart';
import 'package:tesla/pages/product/models/sy_product.dart';
import 'package:tesla/utils/sy_navigator.dart';
import 'package:tesla/widgets/sy_text_widget.dart';

class SyCardDetailPage extends StatelessWidget {
  SyCardDetailPage({super.key});
  final product = Get.arguments[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.3),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              SyNavigator.pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.maxFinite,
        child: Stack(
          children: [
            SyProductInfoWidget(product: product),
            Positioned(
              top: 300,
              left: 0,
              right: 0,
              child: SyProductDes(
                product: product,
                onTap: () {},
              ),
            ),
            Positioned(
              top: 70,
              right: -30,
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  fit: BoxFit.contain,
                  height: 250, //378
                  width: 250,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SyProductInfoWidget extends StatelessWidget {
  const SyProductInfoWidget({super.key, required this.product});
  final SyProduct product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 300,
      width: 150,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SyTextWidget(text: product.category.toUpperCase()),
            SyTextWidget(
              text: product.title,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.visible,
              maxLines: 2,
            ),
            SyTextWidget(
              text: 'Form',
              fontWeight: FontWeight.bold,
            ),
            SyTextWidget(
              text: "\$${product.price}",
              fontWeight: FontWeight.bold,
            ),
            SyTextWidget(
              text: 'Available Colors',
              fontWeight: FontWeight.bold,
            ),
            Row(
              children: [
                buildColorBox(
                  10,
                  color: Color(0xFF7BA275),
                  isActive: true,
                ),
                buildColorBox(
                  10,
                  color: Color(0xFFD7D7D7),
                ),
                buildColorBox(
                  10,
                  color: Colors.orange,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildColorBox(double defaultSize,
      {Color? color, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      // For  fixed value we can use cont for better performance
      padding: const EdgeInsets.all(5),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive ? SvgIcon.check : SizedBox(),
    );
  }
}

class SyProductDes extends StatelessWidget {
  const SyProductDes({super.key, required this.product, required this.onTap});
  final SyProduct product;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.subTitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            product.description,
            style: TextStyle(fontSize: 15),
          ),
          Gap(50),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(40)),
              width: 300,
              height: 80,
              child: Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
