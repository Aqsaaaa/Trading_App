import 'package:flutter/material.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/modules/expansion_panel/expansion_panel.dart';
import 'package:trading_app/modules/wallet/view/deposit_page.dart';

import '../../../../gen/assets.gen.dart';

class BriPage extends StatelessWidget {
  const BriPage({Key? key}) : super(key: key);

  List<Item> generateItems(int numberOfItems) {
    return [
      Item(
          headerValue: 'Internet Banking BRI (Mobile Version)',
          expandedValue: [
            {'title': 'Open the BRI Mobile Application and Login to BRI Internet Banking'},
            {'title': 'Select the Payment menu > Briva'},
            {'title': 'Press the "Payment Code" column then enter 88812 8837356 098 as the Briva Number and click "Ok"'},
            {'title': 'Enter the top-up amount you want to pay and press "Send". If the account virtual number is correct, transaction information will be displayed.'},
            {'title': 'Confirm the transaction by entering your internet banking password and clicking "Send"'}
          ],
      ),
      Item(
          headerValue: 'BRIMO',
          expandedValue: [
            {'title': 'Open the BRI Mobile Application and Login to BRI Internet Banking'},
            {'title': 'Select the Payment menu > Briva'},
            {'title': 'Press the "Payment Code" column then enter 88812 8837356 098 as the Briva Number and click "Ok"'},
            {'title': 'Enter the top-up amount you want to pay and press "Send". If the account virtual number is correct, transaction information will be displayed.'},
            {'title': 'Confirm the transaction by entering your internet banking password and clicking "Send"'}
          ]),
      Item(
          headerValue: 'ATM Machine BRI',
          expandedValue: [
            {'title': 'Open the BRI Mobile Application and Login to BRI Internet Banking'},
            {'title': 'Select the Payment menu > Briva'},
            {'title': 'Press the "Payment Code" column then enter 88812 8837356 098 as the Briva Number and click "Ok"'},
            {'title': 'Enter the top-up amount you want to pay and press "Send". If the account virtual number is correct, transaction information will be displayed.'},
            {'title': 'Confirm the transaction by entering your internet banking password and clicking "Send"'}
          ])
    ];
  }

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
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const DepositPage(),
                ),
              );
            },
          ),
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
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BRI',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
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
                  border: Border.all(color: ColorName.blue),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Assets.icon.bri.svg(),
                              const SizedBox(width: 6),
                              const Text('Bank Rakyat Indonesia (BRI)'),
                            ],
                          ),
                          const Row(
                            children: [
                              Text('Change',
                                  style: TextStyle(color: ColorName.blue)),
                              SizedBox(width: 8),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Center(
                child: Column(
                  children: [
                    const Text(
                      'Virtual Number BRI',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '88812 8837356 098',
                      style: TextStyle(
                        fontSize: 32,
                        color: ColorName.orange,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        // Perform action when button is pressed
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                        side: const BorderSide(color: ColorName.blue),
                      ),
                      child: const Text('Salin Kode'),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Account Name : Ahmad Solikin',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Payment Instructions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 8),
              ExpansionPanelListExample(data: generateItems(3))
            ],
          ),
        ),
      ),
    );
  }
}
