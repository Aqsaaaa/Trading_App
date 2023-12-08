// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trading_app/gen/colors.gen.dart';

import '../../../gen/assets.gen.dart';
import '../../dialog/dialog_option_button.dart';

part 'widgets/charts_item_widget.dart';
part 'widgets/search_filter_widget.dart';

class ChartsPage extends StatefulWidget {
  const ChartsPage({Key? key}) : super(key: key);

  @override
  _ChartsPageState createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        'All Charts',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: ColorName.white,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: const [
              Tab(text: 'Indices'),
              Tab(text: 'Indices Future'),
              Tab(text: 'Stocks'),
              Tab(text: 'Commodities'),
              Tab(text: 'Currencies'),
            ],
            indicatorColor: ColorName.blue,
            unselectedLabelColor: Colors.grey,
            labelColor: ColorName.blue,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SearchFilterWidget(),
                        ChartsItemWidget(),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SearchFilterWidget(),
                        ChartsItemWidget(),
                        SizedBox(height: 16),
                        ChartsItemWidget(),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SearchFilterWidget(),
                        ChartsItemWidget(),
                        SizedBox(height: 16),
                        ChartsItemWidget(),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SearchFilterWidget(),
                        ChartsItemWidget(),
                        SizedBox(height: 16),
                        ChartsItemWidget(),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SearchFilterWidget(),
                        ChartsItemWidget(),
                        SizedBox(height: 16),
                        ChartsItemWidget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
