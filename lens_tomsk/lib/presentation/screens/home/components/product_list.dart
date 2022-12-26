import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/details_product/details_product_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/button_favourite_provider.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/product_card.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;

class ProductLists extends StatelessWidget {
  const ProductLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h,),
        Text(
          "Товары со скидкой",
          style: poppinsBold16,
        ),
        Container(
          height: 247.h,
          margin: EdgeInsets.only(right: 10.w),
          child: ListView.builder(
              padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                if (products[index].isDiscounted == true) {
                  return GestureDetector(
                      onTap: () {
                        Get.to(
                            () =>
                                DetailsProductScreen(product: products[index]),
                            transition: tr.Transition.cupertino);
                      },
                      child: ProductCard(
                          product: products[index],
                          buttonUp: ButtonFavouriteProvider(
                              product: products[index])));
                }
                return Container();
              }),
        ),
        SectionTitle(text: "Рекомендуемые"),
        Container(
          height: 247.h,
          margin: EdgeInsets.only(right: 10.w),
          child: ListView.builder(
              padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                if (products[index].isRecommended == true) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(
                          () => DetailsProductScreen(product: products[index]),
                          transition: tr.Transition.cupertino);
                    },
                    child: ProductCard(
                        product: products[index],
                        buttonUp:
                            ButtonFavouriteProvider(product: products[index])),
                  );
                }
                return Container();
              }),
        ),
      ],
    );
  }
}
