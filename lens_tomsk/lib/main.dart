import 'package:flutter/material.dart';
import 'package:lens_tomsk/presentation/common/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lens_tomsk/presentation/screens/splash/splash_screen_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreenProvider.routeName, 
        routes: routes,
      ),
    );
  }
}
