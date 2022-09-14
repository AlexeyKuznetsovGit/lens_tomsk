import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/data/repository/Category_products.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/buttons_filter_sort.dart';
import 'package:lens_tomsk/presentation/screens/details_product/details_product_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_back.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_favourite/button_favourite_provider.dart';
import 'package:lens_tomsk/presentation/screens/widgets/header.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/product_card.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;

class BodyDetailsCatalog extends StatelessWidget {
  const BodyDetailsCatalog({Key? key, required this.category_name})
      : super(key: key);
  final String category_name;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 11.w, top: 20.h, right: 10.w),
                child: ButtonBack(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, right: 11.w),
                child: Header(
                  width: 293,
                  text: 'Поиск по названию...',
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.w, right: 11.w, top: 10.h),
            child: ButtonsFilterSort(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: GridView.builder(
                padding: EdgeInsets.only(right: 10.w, bottom: 20.h),
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: categoryProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10.h,
                  mainAxisExtent: 217.h,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                       Get.to(() => DetailsProductScreen(product: categoryProducts[index]),  transition: tr.Transition.cupertino);
                    },
                    child: ProductCard(product: categoryProducts[index], buttonUp: ButtonFavouriteProvider(product: categoryProducts[index])),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
