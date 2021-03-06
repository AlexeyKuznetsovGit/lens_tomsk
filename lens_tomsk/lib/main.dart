import 'package:eticon_api/eticon_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_tomsk/presentation/common/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/screens/splash/splash_screen_provider.dart';

void main() {
  Api.init(baseUrl: 'http://ancient-beyond-12836.herokuapp.com/api/');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreenProvider.routeName, 
        routes: routes,
      ),
    );
  }
}
