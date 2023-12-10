import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

class ExpandableMenu extends StatelessWidget {
  const ExpandableMenu({Key? key});

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
        const Divider(height: 0),
        buildClickableTile(
            'Registration',
            <Widget>[const ListTile(title: Text('Example 1'))],
            context
        ),
        const Divider(height: 0),
        buildClickableTile(
            'Charts provider',
            <Widget>[const ListTile(title: Text('Example 1'))],
            context
        ),
        const Divider(height: 0),
        buildClickableTile(
            'Signals provider',
            <Widget>[const ListTile(title: Text('Example 1'))],
            context
        ),
        const Divider(height: 0),
        buildClickableTile(
          'Select and read charts',
          <Widget>[const ListTile(title: Text('Example 1'))],
            context
        ),
        const Divider(height: 0),
        buildClickableTile(
          'Financing',
          <Widget>[
            const ListTile(title: Text('How to deposit')),
            const ListTile(title: Text('How to get earning from upload chart')),
            const ListTile(title: Text('How to withdraw')),
          ],
            context
        ),
      ],
    );
  }

  Widget buildClickableTile(String title, List<Widget> children,
      BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the tap event here
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('$title clicked!'),
            )
        );
        print('$title clicked!');
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
