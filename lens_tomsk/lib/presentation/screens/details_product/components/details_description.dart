import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/expandable_text.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338.w,
      margin: EdgeInsets.only(bottom:20.h),
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: Column(children: [
          ExpandableText(product.description, style: poppinsRegular12, trimLines: 5,)
        ]),
      ),
    );
  }
}
