import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/details_product/components/details_button_cart/details_button_cart_provider.dart';
import 'package:lens_tomsk/presentation/screens/details_product/components/details_button_fav/details_button_fav_provider.dart';
import 'package:lens_tomsk/presentation/screens/details_product/components/details_product_info.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/components/product_price.dart';

class DetailsTitlePriceButtons extends StatelessWidget {
  const DetailsTitlePriceButtons({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.w, right: 11.w, bottom: 10.h),
      child: Container(
        width: 338.w,
        height: 127.h,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: kBlueColor.withOpacity(0.1),
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          children: [
            DetailsProductInfo(product: product),
            ProductPrice(product: product),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               DetailsButtonFavProvider(product: product,),
                SizedBox(
                  width: 10.w,
                ),
                DetailsButtonCartProvider(product: product,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
