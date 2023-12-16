import 'package:flutter/material.dart';
import 'package:parellexdemo/constant/app_constant.dart';
import 'package:parellexdemo/screen/carousal_slider.dart';
import 'package:parellexdemo/screen/location_list.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parallax Videos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ParallaxRecipe()));
                },
                child: const Text('Parallax Vertical')),
            ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) =>
                          const CarousalSliderWithHorizontalParallax());
                  Navigator.push(context, route);
                },
                child: const Text('Parallax Horizontal')),
          ],
        ),
      ),
    );
  }
}
