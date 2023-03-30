import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // appbar
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                Image(
                  image: Assets.images.logo.provider(),
                  height: size.height * 0.13,
                  width: size.width * 0.5,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              ],
            ),
          ),
          // poster
          Stack(
            children: [
              Container(
                width: size.width / 1.25,
                height: size.height / 4.2,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: Assets.images.poster.provider(),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              // poster gradient
              Container(
                width: size.width / 1.25,
                height: size.height / 4.2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient:
                      LinearGradient(colors: GradientColors.posterGradient),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
