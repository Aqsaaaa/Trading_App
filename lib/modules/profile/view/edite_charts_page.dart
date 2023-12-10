// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:trading_app/modules/profile/view/my_charts_list_page.dart';

import '../../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class EditeChartsPage extends StatelessWidget {
  const EditeChartsPage({
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Edite Charts',
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
              _editeItem('XAUUSD', 'H1', 'indicator.ex4', 'tutorial.pdf',
                  'www.youtube.com', 1),
              _editeItem('XAUUSD', 'H1', 'indicator.ex4', 'tutorial.pdf',
                  'www.youtube.com', 2),
              _editeItem('XAUUSD', 'H1', 'indicator.ex4', 'tutorial.pdf',
                  'www.youtube.com', 3),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  minimumSize: const Size(double.infinity,
                      36.0), // Set the button width to double infinity
                ),
                onPressed: () {
                  // Action when button is pressed
                },
                child: const Text('Edite'), // Replace with your button text
              ),
              const Divider(
                color: ColorName.lightGrey,
                height: 5,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
                            border: Border.all(color: ColorName.lightGrey),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.remove_red_eye,
                                    color: ColorName.lightGrey),
                                SizedBox(width: 8),
                                Text(
                                  'Preview',
                                  style: TextStyle(color: ColorName.lightGrey),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Text(
                                  'Save Draft',
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const MyChartsListPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Text(
                                  'Submit',
                                  style: TextStyle(color: ColorName.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _editeItem(
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
