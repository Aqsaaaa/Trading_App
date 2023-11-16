import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trading_app/gen/colors.gen.dart';

import '../../../gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: ColorName.white,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: ColorName.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: Assets.images.prodile.image(),
                          ),
                          const SizedBox(width: 8),
                          const Column(
                            children: [
                              Text(
                                'Hi, Welcome Back!',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: ColorName.white,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                'Ahmad Solikin',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: ColorName.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Assets.icon.notification.svg(),
                        onPressed: () {
                          // Tindakan ketika tombol notifikasi ditekan
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors
                      .white, // Ganti dengan warna latar belakang yang diinginkan
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset:
                          const Offset(0, 2), // pergeseran bayangan ke bawah
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildInfoItem(Assets.icon.wallet.svg(), 'Balance', '800'),
                    const VerticalDivider(
                      width: 5,
                      thickness: 1,
                      color: Colors.black,
                    ),
                    _buildInfoItem(
                        Assets.icon.creditcard.svg(), 'Deposit', '500'),
                    const VerticalDivider(
                      width: 16,
                      thickness: 1,
                      color: Colors.black,
                    ),
                    _buildInfoItem(Assets.icon.coin.svg(), 'Earning', '300'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Newly Uploaded Charts',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'These charts might be helpful for your trading guidance',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: ColorName.blue,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                height: 200,
                width: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _newUploadCharts(
                          Assets.images.prodile.image(),
                          'FX Power',
                          'Created by System (May 12,  2023)',
                          Assets.images.chart.image(width: 250)),
                      const SizedBox(width: 20),
                      _newUploadCharts(
                          Assets.images.prodile.image(),
                          'FX Power',
                          'Created by System (May 12,  2023)',
                          Assets.images.chart.image(width: 250)),
                      const SizedBox(width: 20),
                      _newUploadCharts(
                          Assets.images.prodile.image(),
                          'FX Power',
                          'Created by System (May 12,  2023)',
                          Assets.images.chart.image(width: 250)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Education Channels',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: ColorName.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                height: 200,
                width: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _educationChanel(
                          'Forex trading for beginner (full course)',
                          Assets.images.youtube.image(width: 250)),
                      const SizedBox(width: 20),
                      _educationChanel(
                          'Forex trading for beginner (full course)',
                          Assets.images.youtube.image(width: 250)),
                      const SizedBox(width: 20),
                      _educationChanel(
                          'Forex trading for beginner (full course)',
                          Assets.images.youtube.image(width: 250)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trading Event',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: ColorName.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                height: 200,
                width: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _educationChanel(
                          'Forex trading for beginner (full course)',
                          Assets.images.youtube.image(width: 250)),
                      const SizedBox(width: 20),
                      _educationChanel(
                          'Forex trading for beginner (full course)',
                          Assets.images.youtube.image(width: 250)),
                      const SizedBox(width: 20),
                      _educationChanel(
                          'Forex trading for beginner (full course)',
                          Assets.images.youtube.image(width: 250)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Broker Introduction',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: ColorName.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                height: 200,
                width: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _brokerYt(
                          'EightCap', Assets.images.broker.image(width: 250)),
                      const SizedBox(width: 20),
                      _brokerYt(
                          'EightCap', Assets.images.broker.image(width: 250)),
                      const SizedBox(width: 20),
                      _brokerYt(
                          'EightCap', Assets.images.broker.image(width: 250)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    border: Border.all(color: ColorName.blue)),
                padding: const EdgeInsets.all(16),
                height: 200,
                width: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Broker'),
                          Text('Active User'),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Assets.images.brokerDisplay.image(scale: 0.8),
                              const SizedBox(width: 8),
                              const Text(
                                'FP Market',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: ColorName.blue,
                              ),
                              Text(
                                '1200',
                                style: TextStyle(color: ColorName.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Assets.images.brokerDisplay.image(scale: 0.8),
                              const SizedBox(width: 8),
                              const Text(
                                'FP Market',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: ColorName.blue,
                              ),
                              Text(
                                '1200',
                                style: TextStyle(color: ColorName.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Assets.images.brokerDisplay.image(scale: 0.8),
                              const SizedBox(width: 8),
                              const Text(
                                'FP Market',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: ColorName.blue,
                              ),
                              Text(
                                '1200',
                                style: TextStyle(color: ColorName.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildInfoItem(SvgPicture icon, String title, String value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          icon,
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              Text(
                '\$${value.toString()}',
                style: const TextStyle(
                  fontSize: 18.0, // Ganti dengan warna teks yang diinginkan
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Widget _newUploadCharts(
    Image profile, String title, String subtitle, Image chart) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          profile,
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14.0, // Ganti dengan warna teks yang diinginkan
                ),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 8),
      chart,
    ],
  );
}

Widget _educationChanel(String title, Image video) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      video,
      const SizedBox(height: 10),
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _brokerYt(String title, Image video) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      video,
      const SizedBox(height: 10),
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
