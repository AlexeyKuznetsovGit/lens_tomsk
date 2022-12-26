import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/details_catalog/components/price_container.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({Key? key}) : super(key: key);

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues _currentRangeValues = const RangeValues(0, 100000);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: PriceContainer(
                text: "От",
                price: _currentRangeValues.start.round().toString(),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: PriceContainer(
                text: "До",
                price: _currentRangeValues.end.round().toString(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
          child: RangeSlider(
            activeColor: kBlueColor,
            values: _currentRangeValues,
            max: 100000,
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
        ),
      ],
    );
  }
}
