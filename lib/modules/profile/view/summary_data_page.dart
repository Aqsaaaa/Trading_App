// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class SummaryDataPage extends StatelessWidget {
  const SummaryDataPage({
    Key? key,
  }) : super(key: key);

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
          onPressed: () => context.go('/AddChartsPage'),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Indicator Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('Trend Scaner'),
              Divider(
                height: 5,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
              const SizedBox(height: 16),
              const Text(
                'Thumbnail',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'www.youtube.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              Divider(
                height: 5,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
              _summaryItem('XAUUSD', 'H1', 'indicator.ex4', 'tutorial.pdf',
                  'www.youtube.com', 1),
              _summaryItem('XAUUSD', 'H1', 'indicator.ex4', 'tutorial.pdf',
                  'www.youtube.com', 2),
              _summaryItem('XAUUSD', 'H1', 'indicator.ex4', 'tutorial.pdf',
                  'www.youtube.com', 3),
              const Divider(
                color: ColorName.lightGrey,
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _summaryItem(
  final String pair,
  final String timeFrame,
  final String indiFile,
  final String file,
  final String link,
  final int number,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 16),
      Text(
        'Charts $number',
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      const SizedBox(height: 16),
      const Text('Sample Image Screen'),
      const SizedBox(height: 8),
      Assets.images.charts.image(),
      const SizedBox(height: 8),
      Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pairs', style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 4),
              Text('Time Frame',
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 4),
              Text('Indi file',
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 4),
              Text(
                'Tutorial',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 4),
              Text('File', style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 4),
              Text('Link', style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 4),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ': $pair',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                ': $timeFrame',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                ': $indiFile',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                '',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                ': $file',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                ': $link',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 16),
    ],
  );
}
