import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';

class ConfirmWithdrawPage extends StatelessWidget {
  const ConfirmWithdrawPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Confirm Withdraw',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                const Text(
                  'Nominal',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(
                    color: Colors.grey.shade300,
                  ))),
                  child: Text(
                    'Rp 2.000.000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      height: 2,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                _bankAccount(context, false, false),
                SizedBox(height: 16),
                Divider(thickness: 1, color: Colors.grey.shade300),
                SizedBox(height: 8),
                Text('Withdraw Detail'),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nominal'),
                    Text('Rp 2.000.000'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Transfer to account'),
                    Text('Rifky S'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Bank'),
                    Text('Bank Rakyat Indonesia'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Admin Fee'),
                    Text('Rp 5.000'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total'),
                    Text('Rp 2.005.000'),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              width: double.infinity,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    ColorName.blue,
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Confirm Withdraw'),
                    ),
                  );
                },
                child: const Text(
                  'Confirm Withdraw',
                  style: TextStyle(color: ColorName.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _bankAccount(
    BuildContext context, bool showPrependIcon, bool showAppendIcon) {
  return Container(
    color: Colors.transparent,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            if (showPrependIcon == true) Icon(Icons.chevron_left),
            Assets.icon.bri.svg(),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmad Solikin',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'BRI - 12345678910',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ],
        ),
        if (showAppendIcon == true) Icon(Icons.chevron_right_rounded)
      ],
    ),
  );
}
