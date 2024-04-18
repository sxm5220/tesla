import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tesla/constans/assets_path.dart';
import 'package:tesla/pages/product/models/sy_category.dart';
import 'package:tesla/widgets/sy_text_widget.dart';

class SyCategoryCardWidget extends StatelessWidget {
  const SyCategoryCardWidget({super.key, required this.category});
  final SyCategory category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 200,
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipPath(
                clipper: CategoryCustomShape(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey.withOpacity(.3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SyTextWidget(
                          text: category.title,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        Gap(5),
                        SyTextWidget(
                          text: "${category.numOfProducts} + Products",
                          color: Colors.orange,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AspectRatio(
                    aspectRatio: 1.3,
                    child: FadeInImage.assetNetwork(
                        placeholder: GifPath.spinner, image: category.image),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
