import 'package:flutter/material.dart';
import 'package:trading_app/gen/colors.gen.dart';

import '../../signal/view/signal_page.dart';

class PersonalSignalPage extends StatelessWidget {
  const PersonalSignalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorName.white,
        automaticallyImplyLeading: false,
        title: const Text(
          'Provider',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SignalSearchFilterWidget(),
              SizedBox(height: 8),
              ProfileInfoWidget(
                name: 'Ahmad',
                subscribe: 'Subscribed',
                color: ColorName.blue,
              ),
              ProfileInfoWidget(
                name: 'Ahmad',
                subscribe: 'Unsubscribe',
                color: ColorName.red,
              ),
              ProfileInfoWidget(
                name: 'Ahmad',
                subscribe: 'Unsubscribe',
                color: ColorName.red,
              ),
              ProfileInfoWidget(
                name: 'Ahmad',
                subscribe: 'Subscribed',
                color: ColorName.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
