import 'package:flutter/material.dart';
import 'package:trading_app/gen/assets.gen.dart';
import 'package:trading_app/gen/colors.gen.dart';

part 'widget/signal_item_widget.dart';

class SignalPage extends StatelessWidget {
  const SignalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Signal Provider List',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: ColorName.white,
                          ),
                        ),
                        SizedBox(height: 12)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'All Provider'),
                Tab(text: 'Subscribed'),
              ],
              indicatorColor: ColorName.blue,
              unselectedLabelColor: Colors.grey,
              labelColor: ColorName.blue,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
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
                  SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
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
                            subscribe: 'Unsubscribe',
                            color: ColorName.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
