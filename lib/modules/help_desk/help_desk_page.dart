// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:trading_app/gen/assets.gen.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/widgets/expansion_panel/expandable_menu.dart';
import 'package:trading_app/modules/notification/view/notification_page.dart';

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
