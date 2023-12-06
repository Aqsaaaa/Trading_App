// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/modules/withdraw/withdraw_page.dart';

import '../../../gen/assets.gen.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  static var tag = 'loggin-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => context.go('/Bottombar'),
        ),
        title: const Text(
          'Finance',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () => context.go('/wallet'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Balance Total',
                          style:
                              TextStyle(color: ColorName.white, fontSize: 24),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Rp 10.000.000',
                          style: TextStyle(
                              fontSize: 36,
                              color: ColorName.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () => context.go('/Deposit'),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                backgroundColor: ColorName.aqua,
                              ),
                              child: Row(
                                children: [
                                  Assets.icon.wallet
                                      .svg(color: ColorName.white),
                                  const SizedBox(width: 6),
                                  const Text('Deposit'),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const WithdrawPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                backgroundColor: ColorName.aqua,
                              ),
                              child: Row(
                                children: [
                                  Assets.icon.download
                                      .svg(color: ColorName.white),
                                  const SizedBox(width: 6),
                                  const Text('Withdraw'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
                height: 230,
                width: 100,
                child: const Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Deposit Total', style: TextStyle(fontSize: 20)),
                      SizedBox(height: 8),
                      Text(
                        'Rp 1,000,000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: ColorName.blue),
                      ),
                      SizedBox(height: 6),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Earning Total',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Rp 500,000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: ColorName.orange),
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'History',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () => context.go('/History'),
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
              Column(
                children: [
                  _history(Assets.icon.creditcard.svg(color: ColorName.blue),
                      'Deposit', 'Tues, 24 March 2023', 'Rp 10.000.000'),
                  _history(Assets.icon.creditcard.svg(color: ColorName.blue),
                      'Deposit', 'Tues, 24 March 2023', 'Rp 10.000.000'),
                  _history(Assets.icon.creditcard.svg(color: ColorName.blue),
                      'Deposit', 'Tues, 24 March 2023', 'Rp 10.000.000'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _history(SvgPicture icon, String title, String subtitle, String value) {
  return Column(
    children: [
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
      const SizedBox(height: 20),
    ],
  );
}
