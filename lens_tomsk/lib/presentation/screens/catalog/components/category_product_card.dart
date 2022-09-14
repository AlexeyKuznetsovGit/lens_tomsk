import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/data/repository/Category_products.dart';
import 'package:lens_tomsk/domain/models/Category_product.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/details_catalog_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;

class CategoryProductCard extends StatelessWidget {
  CategoryProductCard(
      {Key? key, required this.category_name, required this.category_product})
      : super(key: key);
  final CategoryProduct category_product;
  final String category_name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.w, right: 11.w, bottom: 10.h),
      child: GestureDetector(
        onTap: () {
          Get.to(() => DetailsCatalogScreen(category_name: category_name,),  transition: tr.Transition.cupertino);
              categoryProducts = [];
              for(int index = 0; index < products.length; index++){
                if(products[index].category == category_name){
                  categoryProducts.add(products[index]);
                }
              }
        },
        child: Container(
          height: 164.h,
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
          child: Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(174.w, 58.h, 10.w, 58.h),
                    child: SectionTitle(text: category_product.title),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.w, 10.h, 20.w, 10.h),
                    child: Image.asset(
                      category_product.image,
                      width: 144.w,
                      height: 144.h,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
