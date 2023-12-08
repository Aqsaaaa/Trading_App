import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class DetailItemPage extends StatelessWidget {
  const DetailItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => context.go('/BottomBar'),
          child: const Icon(Icons.arrow_back_rounded, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Detail Item'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Assets.images.profileCharts.image(width: 40),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FX Power',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Market Type: Currencies | XAAUSD',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: ColorName.blue),
                      ),
                      Text(
                        'Created By System (May 12, 2023)',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorName.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            child: Text(
                              'Subscribe',
                              style: TextStyle(color: ColorName.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      if (MediaQuery.of(context).orientation ==
                          Orientation.portrait) {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.landscapeRight,
                        ]);
                      } else {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.portraitUp,
                        ]);
                      }
                    },
                    child: const Icon(
                      Icons.screen_rotation_outlined,
                      color: ColorName.lightGrey,
                    ),
                  ),
                  const SizedBox(height: 2)
                ],
              ),
              const SizedBox(height: 8),
              Column(
                children: [
                  const Divider(height: 16),
                  Assets.images.charts.image(),
                  const Divider(height: 16),
                  Assets.images.charts.image(),
                  const Divider(height: 16),
                  Assets.images.charts.image(),
                ],
              ),
              const Divider(
                thickness: 0.5,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Assets.icon.users.svg(),
                      const SizedBox(width: 4),
                      const Text(
                        '1283',
                        style: TextStyle(color: ColorName.blue),
                      ),
                      const SizedBox(width: 8),
                      Assets.icon.star.svg(),
                      const SizedBox(width: 4),
                      const Text('5.0'),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('BT : 80% | FT : 80% | ',
                          style: TextStyle(color: ColorName.blue)),
                      Assets.icon.signal.svg(),
                      const Text('signals'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
