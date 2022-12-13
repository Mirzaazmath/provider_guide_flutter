import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_guide/provider.dart';
import 'package:provider_guide/provider2.dart';
import 'package:provider_guide/provider3.dart';

import 'homepage.dart';

void main(){

  runApp(
    // The MultiProvider Is Used When We Are Using More Than One Provider Class
    // else Use Below Code For Only For Single Provider Class
    // ChangeNotifierProvider(
    //   create: (context) => CartModel(),
    //   child: const MyApp(),
    // ),
    MultiProvider(
    providers: [

      // The Main Reason We Are Intialaizing The Provider Here So We Can Access it in Our Entire Application

      ChangeNotifierProvider(create: (context) => SomeProvider()),
      ChangeNotifierProvider(create: (context) => SonmeProvider2()),
      ChangeNotifierProvider(create: (context) => SomeProvider3()),
      // SomeProvider Is The Name Of The Provider Class
    ],
    child: const MyApp(),
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}


