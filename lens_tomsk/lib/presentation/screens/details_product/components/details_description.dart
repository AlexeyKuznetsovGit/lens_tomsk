import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:expandable_text/expandable_text.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          width: 318.w,
          child: ExpandableText(
            product.description,
            expandText: 'Смотреть далее...',
            collapseText: 'Свернуть',
            maxLines: 5,
            linkColor: Colors.blue,
            style: TextStyle(
              color: kBlackColor,
              fontFamily: 'Poppins-Regular',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ]),
    );
  }
}
