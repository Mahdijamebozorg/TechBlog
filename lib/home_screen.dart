import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
          body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Appbar
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                Image(
                  image: Assets.images.logo.provider(),
                  height: size.height * 0.13,
                  width: size.width * 0.5,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
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
                  gradient: LinearGradient(
                    colors: GradientColors.posterGradient,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                  bottom: 12,
                  right: 12,
                  child: Text("دوازده قدم برنامه نویسی یک دوره ی ...",
                      style: textTheme.titleLarge)),
              Positioned(
                  bottom: 50,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ملیکا عزیزی - یک روز پیش",
                          style: textTheme.titleMedium),
                      Row(
                        children: [
                          const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text("1657", style: textTheme.titleMedium),
                        ],
                      ),
                    ],
                  )),
            ],
          ),

          const SizedBox(
            height: 12,
          ),

          // tags
          SizedBox(
            width: size.width,
            height: size.height * 0.07,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              shrinkWrap: false,
              padding: const EdgeInsets.all(12),
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: GradientColors.tagsGradient,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Image(image: Assets.icons.hashtagicon.provider()),
                        const SizedBox(width: 8),
                        const Text(
                          "Takliljjljkjkljfdksjfg",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 8),
            ),
          ),
        ],
      )),
    );
  }
}
