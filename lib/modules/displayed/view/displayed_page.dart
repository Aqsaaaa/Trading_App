import 'package:flutter/material.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/modules/detail_item/view/detail_item_page.dart';
import 'package:trading_app/modules/dialog/dialog_confirm.dart';
import 'package:trading_app/modules/dialog/dialog_filter.dart';
import 'package:trading_app/modules/dialog/dialog_share_signal.dart';
import 'package:trading_app/modules/personal_signal/view/personal_signal.dart';

import '../../../gen/assets.gen.dart';

part 'widget/displayed_item_widget.dart';
part 'widget/displayed_search_filter_widget.dart';

class DisplayedPage extends StatelessWidget {
  const DisplayedPage({Key? key}) : super(key: key);

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
                          'Displayed Charts',
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
                Tab(text: 'Subsriptions'),
                Tab(text: 'My Charts'),
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
                          DisplayedSearchFilterWidget(),
                          SizedBox(height: 8),
                          DisplayedChartsItemWidget(),
                          DisplayedChartsItemWidget(),
                          DisplayedChartsItemWidget(),
                          DisplayedChartsItemWidget(),
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
                        children: [
                          DisplayedSearchFilterWidget(),
                          SizedBox(height: 8),
                          DisplayedChartsMyItemWidget(),
                          DisplayedChartsMyItemWidget(),
                          DisplayedChartsMyItemWidget(),
                          DisplayedChartsMyItemWidget(),
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
