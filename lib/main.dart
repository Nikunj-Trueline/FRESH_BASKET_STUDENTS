import 'package:flutter/material.dart';
import 'package:fresh_basket/mediaquery/mediaqueryhelper.dart';
import 'package:fresh_basket/preference/shared_preference.dart';
import 'package:fresh_basket/routes/routes_manage.dart';
import 'constant/projects_strings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  PreferenceServices.onInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

     MediaQueryHelper.onInit(context);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
       initialRoute: AppRoutes.splashScreen,
     // home: HomeScreen(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

