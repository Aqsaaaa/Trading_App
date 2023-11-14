import 'package:flutter/cupertino.dart';
import 'package:trading_app/gen/assets.gen.dart';

class SliderContent {
  Image image;
  String title;
  String description;
  String subTitle;

  SliderContent(
      {required this.image,
      required this.title,
      required this.description,
      required this.subTitle});
}

List<SliderContent> contents = [
   SliderContent(
      title: 'Welcome To',
      subTitle: 'Trading App',
      image: Assets.images.landing1.image(width: 220),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do '),
  SliderContent(
      title: 'Welcome To',
      subTitle: 'Trading App',
      image: Assets.images.landing2.image(width: 220),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do '),
  SliderContent(
      title: 'Welcome To',
      subTitle: 'Trading App',
      image: Assets.images.landing3.image(width: 220),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do '),
  SliderContent(
      title: 'Welcome To',
      subTitle: 'Trading App',
      image: Assets.images.landing4.image(width: 220),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do '),
];
