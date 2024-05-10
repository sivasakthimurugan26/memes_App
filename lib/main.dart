import 'package:flutter/material.dart';
import 'package:memes_app/providers/cart_counter_provider.dart';
import 'package:memes_app/providers/meme_cart_provider.dart';
import 'package:memes_app/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:
       [ ChangeNotifierProvider(create: (_) => MemeCartProvider()),
    ChangeNotifierProvider(create: (_) => CartCounterProvider())],
    child: MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        fontFamily: 'SpaceMono',
        useMaterial3: true,
        colorSchemeSeed: const Color(0xff323030)),
        home: const SplashScreen()));
  }
}

