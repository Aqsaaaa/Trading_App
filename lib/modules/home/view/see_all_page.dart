import 'package:flutter/material.dart';
import 'package:trading_app/gen/assets.gen.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/widgets/dialog/dialog_option_button.dart';

import '../../detail_item/view/detail_item_page.dart';

part 'widget/see_all_charts_widget.dart';
part 'widget/see_all_education_widget.dart';
part 'widget/see_all_trading_event_widget.dart';
part 'widget/see_all_broker_introduction_widget.dart';
part 'widget/see_all_broker_user_widget.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorName.white,
          automaticallyImplyLeading: false,
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
        ),
        body: const Column(
          children: [
            TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'New Upload Chart'),
                Tab(text: 'Education Channel'),
                Tab(text: 'Trading Event'),
                Tab(text: 'Broker Introduction'),
                Tab(text: 'Active User Brokers'),
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
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SeeAllChartsItemWidget(),
                          SeeAllChartsItemWidget(),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [SeeAllEducationItemWidget()],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SeeAllTradingItemWidget(),
                          SeeAllTradingItemWidget(),
                          SeeAllTradingItemWidget(),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [SeeAllBrokerIntroductionItemWidget()],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SeeAllBrokerUserWidget(),
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
