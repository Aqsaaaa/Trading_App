import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:trading_app/modules/dialog/dialog_share_signal.dart';
import 'package:trading_app/modules/personal_signal/view/personal_signal.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

part '../widget/bottom_sheet.dart';

class ItemModal extends StatelessWidget {
  final Image image;

  const ItemModal({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ClipOval(
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          color: ColorName.lightGrey,
                          child: const Center(child: Text('Foto')),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Ahmad',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'XAAUSD, BUY:1920.00',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'TP: 1930(+1000Pips); SL: 1910(-1000Pips)',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'Submitted on Apriil 23, 2023, 09.30',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      'Will be expired on April 24, 2023, 09.30',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                image,
              ],
            ),
          ),
        ),
        const SizedBox(height: 8)
      ],
    );
  }
}

class DetailItemPage extends StatelessWidget {
  const DetailItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_rounded, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Detail Item',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.menu_book_outlined),
            label: 'Tutorial',
            onTap: () {
              _bottomSheetitem(context);
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.share),
            label: 'share signal',
            onTap: () {
              _bottomSheetFormType(context);
              
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.remove_red_eye_outlined),
            label: 'view signal',
            onTap: () {
              _bottomSheetitem(context);
            },
          ),
        ],
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
                  const SizedBox(width: 8),
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
                                horizontal: 12, vertical: 4),
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
                      const SizedBox(width: 20),
                      const Text('BT : 80% | FT : 80% | ',
                          style: TextStyle(color: ColorName.blue)),
                      const SizedBox(width: 20),
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
