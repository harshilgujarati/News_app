import 'package:flutter/material.dart';
import 'package:news_app/providers/controllers/news_place_providers.dart';
import 'package:news_app/providers/controllers/news_provider.dart';
import 'package:news_app/views/screens/Home_page.dart';
import 'package:news_app/views/screens/SplashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => News_Place_Provider()),
        ChangeNotifierProvider(create: (context) => NewsProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        routes: {
          "splashscreen": (context) => SplashScreen(),
          "/": (context) => Home_page(),
        },
      ),
    ),
  );
}
