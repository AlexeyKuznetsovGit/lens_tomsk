import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/screens/details_product/details_product_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/product_card.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';

class ProductLists extends StatelessWidget {
  const ProductLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Товары со скидкой",
        ),
        Container(
          margin:
              EdgeInsets.only(right: 10.w, top: 10.h, bottom: 20.h),
          height: 217.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                if (products[index].isDiscounted == true) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsProductScreen(
                                  product: products[index])));
                    },
                    child:
                        ProductCard(product: products[index]),
                  );
                }
                return Container();
              }),
        ),
        SectionTitle(text: "Рекомендуемые"),
        Container(
          margin:
              EdgeInsets.only(right: 10.w, top: 10.h, bottom: 20.h),
          height: 217.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                if (products[index].isRecommended == true) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsProductScreen(
                                  product: products[index])));
                    },
                    child:
                        ProductCard(product: products[index]),
                  );
                }
                return Container();
              }),
        ), 
      ],
    );
  }
}