import 'package:flutter/material.dart';
import 'package:trading_app/modules/expansion_panel/expansion_panel.dart';
import 'package:trading_app/modules/withdraw/confirm_withdraw_page.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';

class WithdrawPage extends StatelessWidget {
  const WithdrawPage({super.key});

  List<Item> generateItems() {
    return [
      Item(
          headerValue: 'Success',
          transactionValue: 'Rp 1.000.000',
          expandedValue: [
            {
              'title': 'Withdrawal code',
              'value': 'qwerty1234556',
            },
            {
              'title': 'Transfer to account',
              'value': '1234567890',
            },
            {
              'title': 'Bank',
              'value': 'Bank Rakyat Indonesia',
            },
            {
              'title': 'Transferred on date',
              'value': '28-05-2023 10:30 AM',
            }
          ],
          showOrderedListNumber: false),
      Item(
          headerValue: 'Success',
          transactionValue: 'Rp 1.000.000',
          showOrderedListNumber: false,
          expandedValue: [
            {
              'title': 'Withdrawal code',
              'value': 'qwerty1234556',
            },
            {
              'title': 'Transfer to account',
              'value': '1234567890',
            },
            {
              'title': 'Bank',
              'value': 'Bank Rakyat Indonesia',
            },
            {
              'title': 'Transferred on date',
              'value': '28-05-2023 10:30 AM',
            }
          ])
    ];
  }

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
          'Withdraw',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _cardBalance(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Bank Account',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Coming Soon'),
                      ));
                    },
                    child: const Text('+  Add Bank Account',
                        style: TextStyle(fontSize: 16, color: ColorName.green)),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context, builder: _modalBottomSheet);
                },
                child: _bankAccount(context, false, true),
              ),
              const SizedBox(height: 8),
              const Divider(thickness: 1),
              _withdrawHistory(context),
              const SizedBox(height: 8),
              ExpansionPanelListExample(
                data: generateItems(),
                headerColor: ColorName.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _cardBalance() {
  return Stack(
    children: [
      SizedBox(
        height: 140,
        width: double.infinity,
        child: Assets.images.backgroundWallet.image(
          fit: BoxFit.cover,
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Balance Total',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Rp 2.000.000',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              '*Your total Balance in the period 1 - 31 May 2023',
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        ),
      )
    ],
  );
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

Widget _withdrawHistory(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        'Withdraw History',
        style: TextStyle(fontSize: 16, color: Colors.black54),
      ),
      Row(
        children: [
          const Text(
            'Mei 2023',
            style: TextStyle(fontSize: 16, color: ColorName.blue),
          ),
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Filter function'),
                  ),
                );
              },
              icon: const Icon(Icons.filter_alt_outlined),
              color: ColorName.blue),
        ],
      )
    ],
  );
}

Widget _modalBottomSheet(BuildContext context) {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _moneyController = TextEditingController();

  return GestureDetector(
    onTap: () {
      FocusScope.of(context).unfocus();
    },
    child: Container(
      height: 500.0,
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                _bankAccount(context, true, false),
                TextFormField(
                  controller: _moneyController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Enter Amount'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an amount';
                    }
                    // Add additional validation if needed
                    return null;
                  },
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //
                  //   Navigator.of(context).pop();
                  // }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const ConfirmWithdrawPage();
                    }),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(ColorName.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(color: ColorName.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
