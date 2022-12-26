import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/filters_dialog.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/sort_dialog.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_text.dart';

class ButtonsFilterSort extends StatelessWidget {
  const ButtonsFilterSort({
    Key? key,
    required this.categoryName
  }) : super(key: key);
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
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
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonText(buttonColor: kGreyColor,textColor: kBlackColor,width: 149,text: "Фильтры", press: (){
              showFilter(categoryName);
            }),
            SizedBox(width: 20.w),
            ButtonText(buttonColor: kGreyColor,textColor: kBlackColor,width: 149,text: "По умолчанию", press: (){
              showSortDialog(context);
            })
          ]),
    );
  }
}