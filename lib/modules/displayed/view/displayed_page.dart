import 'package:flutter/material.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/modules/detail_item/view/detail_item_page.dart';
import 'package:trading_app/widgets/dialog/dialog_confirm.dart';
import 'package:trading_app/widgets/dialog/dialog_filter.dart';
import 'package:trading_app/widgets/dialog/dialog_option_button.dart';
import 'package:trading_app/widgets/dialog/dialog_share_signal.dart';
import 'package:trading_app/modules/notification/view/notification_page.dart';
import 'package:trading_app/modules/personal_signal/view/personal_signal.dart';
import 'package:trading_app/modules/profile/view/add_charts_page.dart';

import '../../../gen/assets.gen.dart';

part 'widget/displayed_item_widget.dart';
part 'widget/displayed_search_filter_widget.dart';

class DisplayedPage extends StatelessWidget {
  const DisplayedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.crisis_alert,
                              color: ColorName.white,
                              size: 50,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Trading App',
                              style: TextStyle(
                                  color: ColorName.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                            // ClipOval(
                            //   child: Assets.images.prodile.image(),
                            // ),
                            // const SizedBox(width: 8),
                            // GestureDetector(
                            //   onTap: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (_) => const ProfilePage(),
                            //       ),
                            //     );
                            //   },
                            //   child: const Column(
                            //     children: [
                            //       Text(
                            //         'Hi, Welcome Back!',
                            //         style: TextStyle(
                            //           fontSize: 16.0,
                            //           color: ColorName.white,
                            //         ),
                            //       ),
                            //       SizedBox(width: 8.0),
                            //       Text(
                            //         'Ahmad Solikin',
                            //         style: TextStyle(
                            //           fontSize: 20.0,
                            //           fontWeight: FontWeight.bold,
                            //           color: ColorName.white,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                        IconButton(
                          icon: Assets.icon.notification.svg(),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const NotificationPage()),
                          ),
                        ),
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
                Tab(text: 'All Charts'),
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
                          DisplayedChartsItemWidget(
                            status: 'Subscribe',
                            color: ColorName.blue,
                          ),
                          DisplayedChartsItemWidget(
                            status: 'Subscribe',
                            color: ColorName.blue,
                          ),
                          DisplayedChartsMyItemWidget(),
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
                          DisplayedChartsItemWidget(
                            status: 'Unsubscribe',
                            color: ColorName.red,
                          ),
                          DisplayedChartsItemWidget(
                            status: 'Unsubscribe',
                            color: ColorName.red,
                          ),
                          DisplayedChartsItemWidget(
                            status: 'Unsubscribe',
                            color: ColorName.red,
                          ),
                          DisplayedChartsItemWidget(
                            status: 'Unsubscribe',
                            color: ColorName.red,
                          ),
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
