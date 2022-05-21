import 'package:flutter/widgets.dart';
import 'package:lens_tomsk/presentation/screens/catalog/catalog_screen.dart';
import 'package:lens_tomsk/presentation/screens/favourite/favourite_screen_provider.dart';
import 'package:lens_tomsk/presentation/screens/home/home_screen.dart';
import 'package:lens_tomsk/presentation/screens/cart/cart_screen.dart';
import 'package:lens_tomsk/presentation/screens/profile/profile_screen.dart';
import 'package:lens_tomsk/presentation/screens/splash/splash_screen_provider.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreenProvider.routeName: (context) => SplashScreenProvider(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CatalogScreen.routeName: (context) => CatalogScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  FavouriteScreenProvider.routeName: (context) => FavouriteScreenProvider(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
