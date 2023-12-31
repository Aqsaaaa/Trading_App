import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/modules/home/view/see_all_page.dart';
import 'package:trading_app/modules/notification/view/notification_page.dart';
import 'package:trading_app/modules/wallet/view/wallet_page.dart';

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
                      const Row(
                        children: [
                          Icon(
                            Icons.crisis_alert,
                            color: ColorName.white,
                            size: 50,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Trading App',
                            style: TextStyle(
                                color: ColorName.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                          // ClipOval(
                          //   child: Assets.images.prodile.image(),
                          // ),
                          // const SizedBox(width: 8),
                          // GestureDetector(
                          //   onTap: () {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (_) => const ProfilePage(),
                          //       ),
                          //     );
                          //   },
                          //   child: const Column(
                          //     children: [
                          //       Text(
                          //         'Hi, Welcome Back!',
                          //         style: TextStyle(
                          //           fontSize: 16.0,
                          //           color: ColorName.white,
                          //         ),
                          //       ),
                          //       SizedBox(width: 8.0),
                          //       Text(
                          //         'Ahmad Solikin',
                          //         style: TextStyle(
                          //           fontSize: 20.0,
                          //           fontWeight: FontWeight.bold,
                          //           color: ColorName.white,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                      IconButton(
                        icon: Assets.icon.notification.svg(),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const NotificationPage()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 100, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          'These charts might be helpful for your trading guidance',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SeeAllPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: ColorName.blue,
                          ),
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
                    height: 250,
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
                              Assets.images.charts.image(width: 250)),
                          const SizedBox(width: 20),
                          _newUploadCharts(
                              Assets.images.prodile.image(),
                              'FX Power',
                              'Created by System (May 12,  2023)',
                              Assets.images.charts.image(width: 250)),
                          const SizedBox(width: 20),
                          _newUploadCharts(
                              Assets.images.prodile.image(),
                              'FX Power',
                              'Created by System (May 12,  2023)',
                              Assets.images.charts.image(width: 250)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Trading Event',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SeeAllPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: ColorName.blue,
                          ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Broker Introduction',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SeeAllPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: ColorName.blue,
                          ),
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
                          _brokerYt('EightCap',
                              Assets.images.broker.image(width: 250)),
                          const SizedBox(width: 20),
                          _brokerYt('EightCap',
                              Assets.images.broker.image(width: 250)),
                          const SizedBox(width: 20),
                          _brokerYt('EightCap',
                              Assets.images.broker.image(width: 250)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Active user with their brokers',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SeeAllPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: ColorName.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
          Container(
            decoration: const BoxDecoration(
              color: ColorName.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const WalletPage(),
                  ),
                );
              },
              child: Container(
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
                height: 90,
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
            ),
          ),
        ],
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
                  fontSize: 18.0,
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
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: ColorName.lightBlue),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Assets.images.profileCharts.image(width: 40),
              const SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FX Power',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
            ],
          ),
          const Divider(
            thickness: 1,
            color: ColorName.blue,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Assets.images.charts.image(height: 100),
              const SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Back Test'),
                  SizedBox(height: 4),
                  Text('Forward Test'),
                  SizedBox(height: 4),
                  Text('Subscriber'),
                  SizedBox(height: 4),
                  Text('Signals Avg'),
                  SizedBox(height: 4),
                  Text('Review'),
                ],
              ),
              const SizedBox(width: 8),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(': 80%'),
                const SizedBox(height: 4),
                const Text(': 80%'),
                const SizedBox(height: 4),
                const Text(': 1.2k'),
                const SizedBox(height: 4),
                const Text(': 3 / Days'),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text(': 5.0'),
                    Assets.icon.star.svg(),
                  ],
                ),
              ]),
            ],
          ),
        ],
      ),
    ),
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
