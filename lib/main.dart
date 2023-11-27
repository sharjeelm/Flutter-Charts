import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/SignIn.dart';
import 'package:provider/provider.dart';
import 'Screens/Signup.dart';
import 'Screens/orderdashboard.dart';
import 'Screens/product_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid?
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyADIF0KmATlWqMR7PX65SS6T2darAhwizE",
      appId: "1:536782380062:android:5dd6e31170ca0979c8e20f",
      messagingSenderId: "536782380062",
      projectId: "orderdashboardproject",
    ),
  )
      :await Firebase.initializeApp();
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      // ChangeNotifierProvider(
      //   create: (BuildContext context) => GoogleSignInprovider(),
      //  child:
      MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: SignInScreen(),
      );
  //  );
  }

}
