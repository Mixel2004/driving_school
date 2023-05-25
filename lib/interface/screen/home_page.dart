import 'package:flutter/material.dart';
import 'package:driving_trail/utils/page_utils.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text(
          'Home Page',
        ),
      ),
    );
  }
}
