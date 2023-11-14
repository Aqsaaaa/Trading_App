import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trading_app/modules/landing_page/content_slide.dart';

import '../../gen/colors.gen.dart';

@RoutePage()
class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: contents.length,
        itemBuilder: (_, i) {
          return Column(
            children: [
              contents[i].image,
              // Assets.images.landing1.image(width: 250),
              const SizedBox(height: 20),
              Text(
                contents[i].description,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: ColorName.blue,
                ),
              ),
              Text(
                contents[i].description,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: ColorName.yellow,
                ),
              ),
              const SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  contents[i].description,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
