import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trading_app/gen/assets.gen.dart';
import 'package:trading_app/modules/home/view/see_all_page.dart';

import '../../gen/colors.gen.dart';

class ExpandableMenu extends StatelessWidget {
  const ExpandableMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Manuals',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
              Container(
                width: 44,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorName.blue, width: 3),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.email,
                    color: ColorName.blue,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Education Channels',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SeeAllPage(),
                    ),
                  );
                },
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: ColorName.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 2,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16),
          height: 200,
          width: 400,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _educationChanel('Forex trading for beginner (full course)',
                    Assets.images.youtube.image(width: 250)),
                const SizedBox(width: 20),
                _educationChanel('Forex trading for beginner (full course)',
                    Assets.images.youtube.image(width: 250)),
                const SizedBox(width: 20),
                _educationChanel('Forex trading for beginner (full course)',
                    Assets.images.youtube.image(width: 250)),
              ],
            ),
          ),
        ),
        const Divider(height: 0),
        buildClickableTile('Registration',
            <Widget>[const ListTile(title: Text('Example 1'))], context),
        const Divider(height: 0),
        buildClickableTile('Charts provider',
            <Widget>[const ListTile(title: Text('Example 1'))], context),
        const Divider(height: 0),
        buildClickableTile('Signals provider',
            <Widget>[const ListTile(title: Text('Example 1'))], context),
        const Divider(height: 0),
        buildClickableTile('Select and read charts',
            <Widget>[const ListTile(title: Text('Example 1'))], context),
        const Divider(height: 0),
        buildClickableTile(
            'Financing',
            <Widget>[
              const ListTile(title: Text('How to deposit')),
              const ListTile(
                  title: Text('How to get earning from upload chart')),
              const ListTile(title: Text('How to withdraw')),
            ],
            context),
      ],
    );
  }

  Widget buildClickableTile(
      String title, List<Widget> children, BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the tap event here
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('$title clicked!'),
        ));
        if (kDebugMode) {
          print('$title clicked!');
        }
      },
      child: Column(
        children: [
          ExpansionTile(
            title: Text(
              title,
              style: TextStyle(
                color: Colors.blue.shade900,
              ),
            ),
            trailing: const Icon(Icons.arrow_drop_down_circle_outlined),
            children: children,
          ),
          const Divider(height: 0),
        ],
      ),
    );
  }
}

Widget _educationChanel(String title, Image video) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      video,
      const SizedBox(height: 10),
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
