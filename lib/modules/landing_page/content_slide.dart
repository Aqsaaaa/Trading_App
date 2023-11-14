import 'package:flutter/cupertino.dart';
import 'package:trading_app/gen/assets.gen.dart';

class SliderContent {
  Image image;
  String title;
  String description;

  SliderContent(
      {required this.image, required this.title, required this.description});
}

List<SliderContent> contents = [
  SliderContent(
      title: 'wkwk',
      image: Assets.images.landing1.image(),
      description: 'xaxax'),
  SliderContent(
      title: 'wkwk',
      image: Assets.images.landing1.image(),
      description: 'xaxax'),
  SliderContent(
      title: 'wkwk',
      image: Assets.images.landing1.image(),
      description: 'xaxax'),
];
