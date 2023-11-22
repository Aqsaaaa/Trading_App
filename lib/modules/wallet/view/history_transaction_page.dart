// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/modules/wallet/view/wallet_page.dart';

import '../../../gen/assets.gen.dart';

class HistoryTransactionPage extends StatelessWidget {
  const HistoryTransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const WalletPage(),
                ),
              );
            },
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Earning'),
              Tab(text: 'Deposit'),
              Tab(text: 'Withdraw'),
              Tab(text: 'Subscribed'),
            ],
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
          ),
          title: const Text(
            'History',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TabBarView(children: [
            Column(
              children: [
                _historySubscribed(
                    Assets.icon.creditcard.svg(color: ColorName.blue),
                    'Deposit',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.creditcard.svg(color: ColorName.blue),
                    'Deposit',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.coin.svg(color: ColorName.orange),
                    'Earning',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.coin.svg(color: ColorName.orange),
                    'Earning',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.download.svg(color: ColorName.green),
                    'Withdraw',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.download.svg(color: ColorName.green),
                    'Withdraw',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.checkcircle.svg(color: ColorName.red),
                    'Subscribed',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.checkcircle.svg(color: ColorName.red),
                    'Subscribed',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
              ],
            ),
            Column(
              children: [
                _historySubscribed(
                    Assets.icon.coin.svg(color: ColorName.orange),
                    'Earning',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.coin.svg(color: ColorName.orange),
                    'Earning',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
              ],
            ),
            Column(
              children: [
                _historySubscribed(
                    Assets.icon.creditcard.svg(color: ColorName.blue),
                    'Deposit',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.creditcard.svg(color: ColorName.blue),
                    'Deposit',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
              ],
            ),
            Column(
              children: [
                _historySubscribed(
                    Assets.icon.download.svg(color: ColorName.green),
                    'Withdraw',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.download.svg(color: ColorName.green),
                    'Withdraw',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
              ],
            ),
            Column(
              children: [
                _historySubscribed(
                    Assets.icon.checkcircle.svg(color: ColorName.red),
                    'Subscribed',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
                _historySubscribed(
                    Assets.icon.checkcircle.svg(color: ColorName.red),
                    'Subscribed',
                    'Tues, 24 March 2023',
                    'Rp 10.000.000'),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

Widget _historySubscribed(
    SvgPicture icon, String title, String subtitle, String value) {
  return Column(
    children: [
      const SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: ColorName.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(value),
        ],
      ),
      const SizedBox(height: 4),
      const Divider(
        thickness: 2,
        height: 20,
      ),
    ],
  );
}
