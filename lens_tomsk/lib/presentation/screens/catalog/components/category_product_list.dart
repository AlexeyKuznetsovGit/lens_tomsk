import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/domain/models/Category_product.dart';
import 'package:lens_tomsk/presentation/screens/catalog/components/category_product_card.dart';

class CategoryProductList extends StatelessWidget {
  CategoryProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        children: List.generate(
          categories.length,
          (int index) => CategoryProductCard(
            categoryName: categories[index].nameCategory,
            categoryProduct: categories[index],
          ),
        ),
      ),
    );
  }
}
