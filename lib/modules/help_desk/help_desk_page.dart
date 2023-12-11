// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/modules/expansion_panel/expandable_menu.dart';

class HelpDeskPage extends StatefulWidget {
  const HelpDeskPage({Key? key}) : super(key: key);

  @override
  _HelpDeskPageState createState() => _HelpDeskPageState();
}

class _HelpDeskPageState extends State<HelpDeskPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
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
                        'Help Desk',
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
      body: SingleChildScrollView(
        child: Container(
          color: ColorName.white,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: const ExpandableMenu(),
        ),
      ),
    );
  }
}
