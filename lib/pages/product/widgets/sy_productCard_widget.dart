import 'package:gap/gap.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:tesla/constans/assets_path.dart';
import 'package:tesla/pages/product/models/sy_product.dart';
import 'package:tesla/widgets/sy_text_widget.dart';

class SyProductCardWidget extends StatelessWidget {
  const SyProductCardWidget(
      {super.key, required this.product, required this.onTap});
  final SyProduct product;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 145,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.3),
            borderRadius: BorderRadius.circular(30)),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FadeInImage.assetNetwork(
                      placeholder: GifPath.spinner,
                      image: product.image,
                      //fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SyTextWidget(
                text: product.title,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              Gap(5),
              SyTextWidget(
                text: "\$${product.price}",
                color: Colors.orange,
              )
            ],
          ),
        ),
      ),
    );
  }
}
