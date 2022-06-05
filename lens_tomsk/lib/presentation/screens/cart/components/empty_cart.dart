import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/catalog/catalog_screen.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_description.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 178.h,
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
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          SectionTitle(text: "В вашей корзине нет товаров"),
          SizedBox(
            height: 20.h,
          ),
          SectionDescription(text: "Просмотрите каталог для поиска"),
          SectionDescription(text: "необходимого Вам товара"),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () => {
              Navigator.pushNamed(context, CatalogScreen.routeName),
            },
            child: Container(
              alignment: Alignment.center,
              width: 318.w,
              height: 38.h,
              decoration: BoxDecoration(
                color: kBlueColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Перейти в каталог",
                style: TextStyle(
                    color: kWhiteColor,
                    fontFamily: 'OpenSans-Regular',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}