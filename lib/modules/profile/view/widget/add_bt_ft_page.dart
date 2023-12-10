import 'package:flutter/material.dart';
import 'package:trading_app/gen/colors.gen.dart';

// part 'widget/displayed_item_widget.dart';

class AddBtFtPage extends StatelessWidget {
  const AddBtFtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Add BT/FT',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: ColorName.white,
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: 'Back Test (BT)'),
                Tab(text: 'Forward test (FT)'),
              ],
              indicatorColor: ColorName.blue,
              unselectedLabelColor: Colors.grey,
              labelColor: ColorName.blue,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.blue),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Go to "Back Test" filling Form'),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                              'Paste the link from the "Back Test" from the website'),
                          const SizedBox(height: 4),
                          const SizedBox(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                hintText: 'Paste link back test here',
                                contentPadding:
                                    EdgeInsets.all(8), // Added padding
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue, // background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Retrieve the result'),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Last Retrieve: Nov 22, 2023 12:00:00',
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 16),
                          const Row(
                            children: [
                              Text('Status: '),
                              Text('Successful Retrieval',
                                  style: TextStyle(color: ColorName.blue)),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text('Result:'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('BT Performace '),
                                  Text('BT Range '),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(': 80%'),
                                  SizedBox(width: 8),
                                  Text(': '),
                                ],
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              SizedBox(width: 32),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Start'),
                                  Text('End'),
                                  Text('Total Range'),
                                ],
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Column(children: [
                                Text(': Nov 22, 2023 12:00:00'),
                                Text(': Nov 22, 2023 12:00:00'),
                                Text(': 1500 Days (+- 5 years)'),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.blue),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            onPressed: () {},
                            child:
                                const Text('Go to "Forward Test" filling Form'),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                              'Paste the link from the "Forward Test" from the website'),
                          const SizedBox(height: 4),
                          const SizedBox(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                hintText: 'Paste link Forward test here',
                                contentPadding:
                                    EdgeInsets.all(8), // Added padding
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue, // background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Retrieve the result'),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Last Retrieve: Nov 22, 2023 12:00:00',
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 16),
                          const Row(
                            children: [
                              Text('Status: '),
                              Text('Successful Retrieval',
                                  style: TextStyle(color: ColorName.blue)),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text('Result:'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('FT Performace '),
                                  Text('FT Range '),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(': 80%'),
                                  SizedBox(width: 8),
                                  Text(': '),
                                ],
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              SizedBox(width: 32),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Start'),
                                  Text('End'),
                                  Text('Total Range'),
                                ],
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Column(children: [
                                Text(': Nov 22, 2023 12:00:00'),
                                Text(': Nov 22, 2023 12:00:00'),
                                Text(': 1500 Days (+- 5 years)'),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
