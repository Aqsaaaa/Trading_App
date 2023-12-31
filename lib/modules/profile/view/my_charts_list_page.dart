import 'package:flutter/material.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/modules/profile/view/add_charts_page.dart';
import 'package:trading_app/modules/profile/view/edite_charts_page.dart';
import 'package:trading_app/modules/profile/view/profile_page.dart';
import 'package:trading_app/modules/profile/view/add_bt_ft_page.dart';

import '../../../gen/assets.gen.dart';

part 'widget/my_charts_item.dart';

class MyChartsListPage extends StatelessWidget {
  const MyChartsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorName.white,
          elevation: 0,
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ProfilePage(),
                  ),
                );
              }),
          title: const Text(
            'My Charts',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AddChartsPage(),
                      ),
                    );
                  },
                  child: const Text(
                    '+ Add',
                    style: TextStyle(color: ColorName.blue, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Approved'),
                Tab(text: 'Pending'),
                Tab(text: 'Draft'),
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
                          MychartsItemWidget(
                            type: 'Approved',
                            color: ColorName.green,
                            bgColor: ColorName.lightGreen,
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
                          MychartsItemWidget(
                            type: 'Waiting Approval',
                            color: ColorName.yellow,
                            bgColor: ColorName.lightYellow,
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
                          MychartsItemWidget(
                            type: 'Editable Draft',
                            color: ColorName.lightGrey,
                            bgColor: ColorName.grey,
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
