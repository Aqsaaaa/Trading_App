import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trading_app/gen/colors.gen.dart';

import '../../../gen/assets.gen.dart';

class DepositPage extends StatelessWidget {
  const DepositPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () => context.go('/Wallet')),
            elevation: 0,
            backgroundColor: ColorName.white,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                color: ColorName.blue,
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Deposit',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: ColorName.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              color: ColorName.blue,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
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
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Transfer Via',
                          style: TextStyle(fontSize: 20)),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Assets.icon.bca.svg(),
                              const SizedBox(width: 6),
                              const Text('Bank Central Asia (BCA)'),
                            ],
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Assets.icon.bni.svg(),
                              const SizedBox(width: 6),
                              const Text('Bank Nasional Indonesia (BNI)'),
                            ],
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => context.go('/Bri'),
                            child: Row(
                              children: [
                                Assets.icon.bri.svg(),
                                const SizedBox(width: 6),
                                const Text('Bank Rakyat Indonesia (BRI)'),
                              ],
                            ),
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
