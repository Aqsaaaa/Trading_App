import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

class DialogFilterOptionButton extends StatelessWidget {
  const DialogFilterOptionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: ColorName.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: ColorName.blue,
          width: 2,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Indices Types',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 16),
            FilterItem(),
            FilterItem(),
            FilterItem(),
            FilterItem(),
          ],
        ),
      ),
    );
  }
}

class FilterItem extends StatefulWidget {
  const FilterItem({super.key});

  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  String selectedFilterOption = '';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFilterOption = 'Dow Jones';
        });
      },
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dow Jones',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: ColorName.blue,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '05:25:16 | DJI',
                        style: TextStyle(color: ColorName.blue, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '34,947.28',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '05:25:16 | DJI',
                    style: TextStyle(color: ColorName.green, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 16,
          )
        ],
      ),
    );
  }
}
