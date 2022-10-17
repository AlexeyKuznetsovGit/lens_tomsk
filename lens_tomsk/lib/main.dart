import 'package:eticon_api/eticon_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'presentation/screens/ordering_screen/ordering_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Api.init(baseUrl: 'http://ancient-beyond-12836.herokuapp.com/api/');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: (context, child) => GetCupertinoApp(
        builder: (context, widget) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!);
        },
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [Locale('ru', ''), Locale('en', '')],
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: child,
      ),
      child: OrderingScreen(),
    );
  }
}
