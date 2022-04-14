import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class DetailsSpecifications extends StatelessWidget {
  const DetailsSpecifications({Key? key, required this.product})
      : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        width: 338.w,
        height: 38.h,
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
        child: Row(
          //TUTA SDELAT WIDGET
          children: [
            Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 10.h),
                  child: Text(
                    product.specificationsName[0],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kHintTextColor,
                      fontFamily: 'Poppins-Regular',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 183.h),
                  child: Text(
                    product.specificationsInfo[0],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kBlackColor,
                      fontFamily: 'Poppins-Regular',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
