import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/data/repository/Favourite_product.dart';
import 'package:lens_tomsk/presentation/common/constants.dart';
import 'package:lens_tomsk/presentation/screens/catalog/catalog_screen.dart';
import 'package:lens_tomsk/presentation/screens/details_product/details_product_screen.dart';
import 'package:lens_tomsk/presentation/screens/favourite/cubit/favourite_screen_cubit.dart';
import 'package:lens_tomsk/presentation/screens/favourite/cubit/favourite_screen_state.dart';
import 'package:lens_tomsk/presentation/screens/widgets/buttons/button_delete.dart';
import 'package:lens_tomsk/presentation/screens/widgets/product_card/product_card.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_description.dart';
import 'package:lens_tomsk/presentation/screens/widgets/section_title.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as tr;

class BodyFavourite extends StatelessWidget {
  const BodyFavourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: BlocBuilder<FavouriteScreenCubit, FavouriteScreenState>(
            builder: (context, state) {
          if (state is EmptyFavouriteState) {
            return Padding(
              padding: EdgeInsets.only(left: 11.w, right: 11.w, top: 20.h),
              child: Container(
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
                    SectionTitle(text: "У вас нет избранных товаров"),
                    SizedBox(
                      height: 20.h,
                    ),
                    SectionDescription(
                        text:
                            "Просмотрите каталог для поиска товара, к которому"),
                    SectionDescription(text: "захотите вернуться позже"),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () => {
                        Get.to(() => const CatalogScreen(),  transition: tr.Transition.cupertino)
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
              ),
            );
          }
          if (state is NotEmptyFavouriteState) {
            return Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: GridView.builder(
                  padding: EdgeInsets.only(right: 10.w, bottom: 20.h),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: favouriteProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10.h,
                    mainAxisExtent: 217.h,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsProductScreen(
                                    product: favouriteProducts[index])));
                      },
                      child: ProductCard(product: favouriteProducts[index], buttonUp: ButtonDelete(product: favouriteProducts[index])),
                    );
                  }),
            );
          }
          return Container();
        }),
      ),
    );
  }
}
