import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trading_app/gen/colors.gen.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

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
          onPressed: () => context.go('/profile'),
        ),
        title: const Text(
          'My Profile',
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
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity, // Add the width property here
              child: ElevatedButton(
                onPressed: () => context.go('/FormMyProfile'),
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
