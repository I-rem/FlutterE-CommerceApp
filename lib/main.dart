import 'package:e_comm/screens/auth-ui/splash-screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that Flutter bindings are set up before any other operation
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { // Immutable
  const MyApp({super.key}); // calling the constructor of the superclass passing the key as parameter

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { // BuildContext holds information about the location of a widget within the widget tree
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Our Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      builder: EasyLoading.init(), // for loading animations, using builder property to make sure it is initalized before the main app starts running
    );
  }
}
