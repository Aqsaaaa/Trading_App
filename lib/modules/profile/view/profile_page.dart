import 'package:flutter/material.dart';
import 'package:trading_app/modules/notification/view/notification_page.dart';
import 'package:trading_app/modules/profile/view/change_password_page.dart';
import 'package:trading_app/modules/profile/view/my_account_page.dart';
import 'package:trading_app/modules/profile/view/my_charts_list_page.dart';
import 'package:trading_app/modules/profile/view/verification_page.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.blue,
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
          decoration: const BoxDecoration(
            color: ColorName.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Assets.images.profile2.image(height: 100),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8),
                      const Text(
                        'Edit Photo ',
                        style: TextStyle(
                          color: ColorName.blue,
                          fontSize: 16,
                        ),
                      ),
                      Assets.icon.edit.svg(),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                // InkWell(
                //   onTap: () {
                //     // Add your button action here
                //   },
                //   child: Container(
                //     width: double.infinity,
                //     height: 45,
                //     decoration: BoxDecoration(
                //       image: const DecorationImage(
                //         image:
                //             AssetImage('assets/images/background wallet.png'),
                //         fit: BoxFit.cover,
                //       ),
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: Center(
                //       child: GestureDetector(
                //         onTap: () => Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (_) => const AddChartsPage())),
                //         child: const Text(
                //           '+  Add Chart List',
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 16,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(height: 20),
                const Text(
                  'Account',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MyAccountPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Assets.icon.user1.svg(),
                          const SizedBox(width: 8),
                          const Text(
                            'My Account',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorName.lightGrey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(
                  thickness: 1,
                  color: ColorName.lightGrey,
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ChangePasswordPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Assets.icon.lockoff.svg(),
                          const SizedBox(width: 8),
                          const Text(
                            'Change Password',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorName.lightGrey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(
                  thickness: 1,
                  color: ColorName.lightGrey,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // ignore: deprecated_member_use_from_same_package
                        Assets.icon.coin.svg(color: Colors.black45),
                        const SizedBox(width: 8),
                        const Text(
                          'Currency - Dollar US',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: ColorName.lightGrey,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Divider(
                  thickness: 1,
                  color: ColorName.lightGrey,
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const VerificationPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Assets.icon.pinpapercheck.svg(),
                          const SizedBox(width: 8),
                          const Text(
                            'Verifications',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorName.lightGrey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(
                  thickness: 1,
                  color: ColorName.lightGrey,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Activity',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Assets.icon.pinpapercheck.svg(),
                        const SizedBox(width: 8),
                        const Text(
                          'Subscribed',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: ColorName.lightGrey,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Divider(
                  thickness: 1,
                  color: ColorName.lightGrey,
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MyChartsListPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Assets.icon.allCharts.svg(),
                          const SizedBox(width: 8),
                          const Text(
                            'My Chart List',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorName.lightGrey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(
                  thickness: 1,
                  color: ColorName.lightGrey,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Help',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Assets.icon.userquestion.svg(),
                        const SizedBox(width: 8),
                        const Text(
                          'Support Center',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: ColorName.lightGrey,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Divider(
                  thickness: 1,
                  color: ColorName.lightGrey,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Assets.icon.infocircle.svg(),
                        const SizedBox(width: 8),
                        const Text(
                          'About Us',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: ColorName.lightGrey,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Divider(
                  thickness: 1,
                  color: ColorName.lightGrey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 8),
                        const Text(
                          'Logout',
                          style: TextStyle(fontSize: 16, color: ColorName.red),
                        ),
                        const SizedBox(width: 8),
                        Assets.icon.login.svg(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
