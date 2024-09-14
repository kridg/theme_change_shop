import 'package:flutter/material.dart';
import 'package:minimal_shop_flutter/models/shop_model.dart';
import 'package:minimal_shop_flutter/pages/cart_page.dart';
import 'package:minimal_shop_flutter/pages/settings_page.dart';
import 'package:minimal_shop_flutter/pages/shop_page.dart';
import 'package:minimal_shop_flutter/theme/theme.dart';
import 'package:provider/provider.dart';

import 'pages/intro_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=>Shop(),
    child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/shop_page':(context)=>const ShopPage(),
        '/intro_page':(context)=>const IntroPage(),
        '/cart_page':(context)=>const CartPage(),
        '/settings_page':(context)=>const SettingsPage(),
      },
    );
  }
}
