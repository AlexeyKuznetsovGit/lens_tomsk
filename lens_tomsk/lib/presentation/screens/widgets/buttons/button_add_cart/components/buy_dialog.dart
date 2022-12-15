import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/domain/models/Product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/components/custom_snack_bar.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/components/option_button.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/controllers/button_add_controller.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_add_cart/cubit/button_add_cart_cubit.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_close_window.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';

void showBuyDialog(BuildContext context, Product product) {
  Get.dialog(
      showBuyDialogWidget(
        product: product,
        context: context,
      ),
      barrierDismissible: true);
}

class showBuyDialogWidget extends StatefulWidget {
  const showBuyDialogWidget(
      {Key? key, required this.product, required this.context})
      : super(key: key);
  final Product product;
  final BuildContext context;

  @override
  State<showBuyDialogWidget> createState() => _showBuyDialogWidgetState();
}

class _showBuyDialogWidgetState extends State<showBuyDialogWidget> {
  @override
  void initState() {
    if (widget.product.options != null) {
      widget.product.options!
          .forEach((key, value) => productOptions.add(Options(key, value)));
    }
    super.initState();
  }

  SelectOption selectedOption = SelectOption();
  ButtonAddController controller = Get.put(ButtonAddController(), tag: "ctrl");
  List<Options> productOptions = [];
  bool openOptions = false;
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 338.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    ButtonCloseWindow(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Доступные опции', style: openSansSemiBold12),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: productOptions.isEmpty ? 0 : 16.h,
                ),
                if (productOptions.isNotEmpty) ...[
                  ...List.generate(
                    productOptions.length,
                    (indexName) => ExpansionWidget(
                        expandedAlignment: Alignment.centerLeft,
                        initiallyExpanded: openOptions,
                        onExpansionChanged: (byl) {
                          setState(() {
                            openOptions = byl;
                          });
                        },
                        titleBuilder: (double animationValue, _, bool isExpaned,
                            toogleFunction) {
                          return GestureDetector(
                            onTap: () {
                              toogleFunction(animated: true);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: OptionButton(
                                optionName: productOptions[indexName].name == selectedOption.name.value
                                    ? "${productOptions[indexName].name}: ${controller.selectedOptions[indexName].parameter.value}"
                                    : productOptions[indexName].name,
                              ),
                            ),
                          );
                        },
                        content: Container(
                          alignment: Alignment.center,
                          height: 150.h,
                          child: SingleChildScrollView(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ...List.generate(
                                    productOptions[indexName].parameters.length,
                                    (indexParameters) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedOption.name.value =
                                              productOptions[indexName].name;
                                          selectedOption.parameter.value =
                                              productOptions[indexName]
                                                  .parameters[indexParameters];
                                          controller.selectedOptions
                                              .add(selectedOption);
                                        });
                                      },
                                      behavior: HitTestBehavior.translucent,
                                      child: Container(
                                        height: 18.h,
                                        margin: EdgeInsets.only(
                                            bottom: indexParameters ==
                                                    productOptions[indexName]
                                                            .parameters
                                                            .length -
                                                        1
                                                ? 0
                                                : 10.h),
                                        child: Text(
                                          productOptions[indexName]
                                              .parameters[indexParameters],
                                          style: poppinsRegular12.copyWith(
                                              color: selectedOption
                                                          .parameter.value ==
                                                      productOptions[indexName]
                                                              .parameters[
                                                          indexParameters]
                                                  ? kBlackColor
                                                  : kHintTextColor),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
                  )
                ] else ...[
                  SectionTitle(text: "У товара нет опций"),
                ],
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Количество товара",
                  style: TextStyle(
                    color: kHintTextColor,
                    fontFamily: 'Poppins-Regular',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(count == 1 || widget.product.count == 0
                            ? () {}
                            : () {
                                count--;
                              });
                      },
                      behavior: HitTestBehavior.translucent,
                      child: SvgPicture.asset("assets/icons/minus.svg",
                          height: 24.h,
                          width: 24.w,
                          color: count == 1 || widget.product.count == 0
                              ? kHintTextColor
                              : kBlackColor),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    SectionTitle(
                      text: widget.product.count == 0
                          ? "Товара нет в наличии"
                          : count.toString(),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(count == widget.product.count ||
                                widget.product.count == 0
                            ? () {}
                            : () {
                                count++;
                              });
                      },
                      behavior: HitTestBehavior.translucent,
                      child: SvgPicture.asset(
                        "assets/icons/plus.svg",
                        height: 24.h,
                        width: 24.w,
                        color: count == widget.product.count ||
                                widget.product.count == 0
                            ? kHintTextColor
                            : kBlackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                    child: Container(
                      width: 318.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        "Добавить товар в корзину",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: 'OpenSans-Regular',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    onTap: () => {
                          BlocProvider.of<ButtonAddCartCubit>(widget.context)
                              .addToCart(widget.product),
                          Get.back(),
                          //AddCartSnackBar()
                        }),
                SizedBox(
                  height: 20.h,
                ),
              ]),
        )
      ],
    );
  }
}
