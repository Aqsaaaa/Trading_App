import 'package:flutter/material.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
