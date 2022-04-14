import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';

class DetailsProductImages extends StatefulWidget {
  const DetailsProductImages({Key? key, required this.product})
      : super(key: key);
  final Product product;

  @override
  _DetailsProductImagesState createState() => _DetailsProductImagesState();
}

class _DetailsProductImagesState extends State<DetailsProductImages> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          11.w,
         20.h,
          11.w,
          10.h),
      child: Container(
        width: 338.w,
        height: 262.h,
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
        child: Stack(
          children: [
            if (widget.product.images.length > 1) ...[
              Padding(
                padding: EdgeInsets.only(
                    top: 234.h,
                    bottom: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    widget.product.images.length,
                    (index) => buildDot(index: index),
                  ),
                ),
              ),
              PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: widget.product.images.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                      top: 20.h,
                      left: 67.w,
                      right: 67.w,
                      bottom: 38.h),
                  child: Image.asset(
                    widget.product.images[index],
                    height: 204.h,
                    width: 204.w,
                  ),
                ),
              ),
            ] else ...[
              Padding(
                padding: EdgeInsets.fromLTRB(
                    67.w,
                    20.h,
                    67.w,
                    38.h),
                child: Image.asset(
                  widget.product.images[0],
                  height: 204.h,
                  width: 204.w,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(microseconds: 500),
      margin: EdgeInsets.only(right: 10),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: currentPage == index ? kBlueColor : kGreyColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
