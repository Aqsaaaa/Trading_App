import 'package:flutter/material.dart';
import 'package:trading_app/modules/wallet/view/history_transaction_page.dart';
import 'package:flutter/services.dart';
import '../../gen/colors.gen.dart';

class TransactionProof extends StatelessWidget {
  final String title;
  final String subtitle;
  final String value;

  const TransactionProof(
      {required this.title,
      required this.subtitle,
      required this.value,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.blue,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const HistoryTransactionPage(),
              ),
            );
          },
        ),
        title: Text(
          'Detail $title',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: ColorName.blue,
            height: 120,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _receipt(
                  title,
                  subtitle,
                  value,
                  '12345678986765',
                ),
                const SizedBox(height: 32),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  height: 45,
                  child: TextButton(
                    onPressed: () {
                      //   Action share transaksi atau save transaksi
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: ColorName.blue,
                        backgroundColor: ColorName.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                              color: ColorName.blue,
                              width: 1.5,
                            ))),
                    child: const Text('Share Transaction Proof'),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _receipt(
    String title, String subtitle, String value, String transactionId) {
  String formatterId = _formatTransactionId(transactionId);

  return Card(
    margin: const EdgeInsets.only(top: 48, left: 16, right: 16),
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Trading App',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorName.blue,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          const Text('Detail Transaksi',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Type'),
              Text('Subscriptions - $title'),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Status'),
              Text(
                'Success',
                style: TextStyle(color: ColorName.green),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Date'),
              Text(subtitle),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total'),
              Text(value,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Status'),
              Text('09.30 AM'),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Subscribed User'),
              Text('Ahmad Solikin'),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Subscribe Time'),
              Text('3 days'),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('ID Transaksi'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(formatterId),
                  IconButton(
                    iconSize: 21,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.copy,
                      color: ColorName.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Order ID'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(formatterId),
                  IconButton(
                    iconSize: 21,
                    onPressed: () {
                      Clipboard.setData(
                        ClipboardData(text: transactionId),
                      );
                    },
                    icon: const Icon(
                      Icons.copy,
                      color: ColorName.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

String _formatTransactionId(String transactionId) {
  const int displayLength = 10;

  if (transactionId.length <= displayLength) {
    return transactionId;
  } else {
    return '${transactionId.substring(0, displayLength)}...';
  }
}
