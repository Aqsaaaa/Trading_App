import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../gen/colors.gen.dart';

class AddChartsPage extends StatelessWidget {
  const AddChartsPage({Key? key}) : super(key: key);

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
          onPressed: () => context.go('/AddMyCharts'),
        ),
        title: const Text(
          'Add Charts List',
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
              'Set Indicator Name & Thumbnail',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text(
                  'Thumbnail (Type file: png, jpg)',
                ),
                Text(
                  '*',
                  style: TextStyle(color: ColorName.red),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 35,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    child: const Text(
                      'Choose Thumbnail',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                          color: ColorName.blue,
                        ),
                        child: const Center(
                          child: Text(
                            'Upload',
                            style: TextStyle(
                                color: ColorName.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Maximum upload file size: 5MB',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Text(
                  'Indicator Name',
                ),
                Text(
                  '*',
                  style: TextStyle(color: ColorName.red),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 35,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  hintText: 'Input Indicator Name',
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Maximum Character 100',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text(
                  'Market Category',
                ),
                Text(
                  '*',
                  style: TextStyle(color: ColorName.red),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 35,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  hintText: 'select market category',
                ),
                items: const [
                  DropdownMenuItem<String>(
                    value: 'M1',
                    child: Row(
                      children: [
                        Text('M1'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'M5',
                    child: Row(
                      children: [
                        Text('M5'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'M15',
                    child: Row(
                      children: [
                        Text('M15'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'M30',
                    child: Row(
                      children: [
                        Text('M30'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'H1',
                    child: Row(
                      children: [
                        Text('H1'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'H2',
                    child: Row(
                      children: [
                        Text('H2'),
                      ],
                    ),
                  ),
                ],
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text(
                  'Type',
                ),
                Text(
                  '*',
                  style: TextStyle(color: ColorName.red),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 35,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  hintText: 'Select Pairs',
                ),
                items: const [
                  DropdownMenuItem<String>(
                    value: 'M1',
                    child: Row(
                      children: [
                        Text('M1'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'M5',
                    child: Row(
                      children: [
                        Text('M5'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'M15',
                    child: Row(
                      children: [
                        Text('M15'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'M30',
                    child: Row(
                      children: [
                        Text('M30'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'H1',
                    child: Row(
                      children: [
                        Text('H1'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'H2',
                    child: Row(
                      children: [
                        Text('H2'),
                      ],
                    ),
                  ),
                ],
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => context.go('/SettingCharts'),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: ColorName.blue,
                    ),
                    Text(
                      'Next',
                      style: TextStyle(color: ColorName.blue),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
