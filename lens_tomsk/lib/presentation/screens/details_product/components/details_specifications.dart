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
        child: Column(children: List.generate(
            product.specificationsName.length,
            (int index) => Column(
              children: [
                Container(
                  height: 38.h,
                  child: Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10.h),
                          child: Text(
                            product.specificationsName[index],
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
                            product.specificationsInfo[index],
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
                product.specificationsName.length == 1 || index == product.specificationsName.length-1  ? Container() :
                Container(height: 1.h, color: kBackGroundColor,)
              ],
            ),
            
        ),
          ),),
    );
  }
}
