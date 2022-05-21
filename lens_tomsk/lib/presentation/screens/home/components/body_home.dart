import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/screens/home/components/product_list.dart';
import 'package:lens_tomsk/presentation/screens/widgets/header.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(11.w, 20.h, 11.w, 20.h),
              child: Header(width: 338,),
            ),
            ProductLists(),
          ],
        ),
      ),
    );
  }
}

