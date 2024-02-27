import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fresh_basket/mediaquery/mediaqueryhelper.dart';
import 'package:fresh_basket/preference/shared_preference.dart';
import 'package:fresh_basket/routes/routes_manage.dart';
import 'constant/projects_strings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCpobY8CdOAA-NG-cv3obfK1Q9_JDYRNHw",
      appId: "1:1038016677094:android:050def634d87a15f1a6727",
      messagingSenderId: "1038016677094",
      projectId: "fresh-basket-6595d",
    ),
  );
  PreferenceServices.onInit();
  runApp(
    const MyApp(),
  );
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
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
