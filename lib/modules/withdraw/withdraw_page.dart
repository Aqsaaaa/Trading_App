import 'package:flutter/material.dart';
import 'package:trading_app/widgets/expansion_panel/expansion_panel.dart';
import 'package:trading_app/modules/withdraw/confirm_withdraw_page.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';

class WithdrawPage extends StatelessWidget {
  WithdrawPage({super.key});

  final formKey = GlobalKey<FormState>();
  final moneyController = TextEditingController();

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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AddBankPage(),
                        ),
                      );
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

  Widget _modalBottomSheet(BuildContext context) {
    return Container(
      height: 500.0,
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                _bankAccount(context, true, false),
                TextFormField(
                  controller: moneyController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Enter Amount'),
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
    );
  }
}

class AddBankPage extends StatelessWidget {
  const AddBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Add Bank',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: GestureDetector(
            child: const Icon(Icons.arrow_back_rounded),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Select Bank',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 35,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(8),
                        hintText: 'Select Bank',
                      ),
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'Bank BRI',
                          child: Row(
                            children: [
                              Text('Bank BRI'),
                            ],
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Bank BCA',
                          child: Row(
                            children: [
                              Text('Bank BCA'),
                            ],
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Bank BNI',
                          child: Row(
                            children: [
                              Text('Bank BNI'),
                            ],
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Name Bank Account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 35,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(8),
                        hintText: 'Input Name Bank Account',
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Bank Account Number',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 35,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(8),
                        hintText: 'Input Bank Account Number',
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Upload Bank Account Number',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 35,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(8),
                          width: double.infinity,
                          child: const Text(
                            'Choose File',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        // Positioned(
                        //   top: 0,
                        //   bottom: 3,
                        //   right: 80,
                        //   child: IconButton(
                        //     onPressed: () {
                        //       // Add delete logic here
                        //     },
                        //     icon: const Icon(
                        //       Icons.clear,
                        //       size: 20,
                        //     ),
                        //   ),
                        // ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 80,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                color: ColorName.blue,
                              ),
                              child: const Center(
                                child: Text(
                                  'Upload',
                                  style: TextStyle(
                                      color: ColorName.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Maximum upload file size: 5 MB',
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(height: 8),
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     style: ElevatedButton.styleFrom(
                  //       foregroundColor: Colors.white,
                  //       backgroundColor: ColorName.blue,
                  //       padding: const EdgeInsets.all(10),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(6),
                  //       ),
                  //     ),
                  //     child: const Text(
                  //       'Save Change',
                  //       style: TextStyle(
                  //         fontSize: 16,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ));
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
            if (showPrependIcon == true) const Icon(Icons.chevron_left),
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
        if (showAppendIcon == true) const Icon(Icons.chevron_right_rounded)
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
