import 'package:flutter/material.dart';
import 'package:trading_app/gen/colors.gen.dart';
import 'package:trading_app/modules/profile/view/form_edit_account_page.dart';
import 'package:trading_app/modules/profile/view/profile_page.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'My Account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Full Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text('Ahmad Solikin'),
            const Divider(
              height: 20,
              thickness: 1,
              color: ColorName.lightGrey,
            ),
            const Text(
              'Username',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text('Solikinn'),
            const Divider(
              height: 20,
              thickness: 1,
              color: ColorName.lightGrey,
            ),
            const Text(
              'Gender',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text('Male'),
            const Divider(
              height: 20,
              thickness: 1,
              color: ColorName.lightGrey,
            ),
            const Text(
              'Country',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text('Indonesia'),
            const Divider(
              height: 20,
              thickness: 1,
              color: ColorName.lightGrey,
            ),
            const Text(
              'City',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text('Jakarta'),
            const Divider(
              height: 20,
              thickness: 1,
              color: ColorName.lightGrey,
            ),
            const Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text('ahmadsolikin@gmail.com'),
            const Divider(
              height: 20,
              thickness: 1,
              color: ColorName.lightGrey,
            ),
            const Text(
              'Mobile Phone',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text('0812345678'),
            const Divider(
              height: 20,
              thickness: 1,
              color: ColorName.lightGrey,
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity, // Add the width property here
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const FormMyAccountPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: ColorName.blue,
                  padding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  'Change Personal Data',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
