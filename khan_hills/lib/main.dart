import 'package:flutter/material.dart';
import 'package:khan_hills/block_detail/provider/block_detail_provider.dart';
import 'package:khan_hills/choose_lang/choose_lang.dart';
import 'package:khan_hills/home/components/brand_detail.dart';
import 'package:khan_hills/providers/main_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<MainProvider>(create: (_) => MainProvider()),
          ChangeNotifierProvider<BlockDetailProvider>(
              create: (_) => BlockDetailProvider()),
        ],
        child: ChooseLanguage(),
      ),
    );
  }
}
