import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trading_app/gen/assets.gen.dart';

import '../../gen/colors.gen.dart';

class DialogShareSignal extends StatefulWidget {
  const DialogShareSignal({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DialogShareSignalState createState() => _DialogShareSignalState();
}

class _DialogShareSignalState extends State<DialogShareSignal> {
  // ignore: non_constant_identifier_names
  String SelectedShareOption = ''; // Variable to store the selected option

  DateTime selectedDateTime = DateTime.now();
  String selectedFormattedDate = '';
  String selectedOption = 'BUY';

  @override
  void initState() {
    super.initState();
    selectedFormattedDate = DateFormat('dd MMM yyyy').format(selectedDateTime);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDateTime,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDateTime) {
      setState(() {
        selectedDateTime = picked;
        selectedFormattedDate =
            DateFormat('dd MMM yyyy').format(selectedDateTime);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      backgroundColor: ColorName.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: ColorName.blue,
            width: 2,
          )),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ClipOval(
                      child: Assets.images.profile2.image(height: 50),
                    ),
                    const SizedBox(),
                    const Text('Jamal'),
                  ],
                ),
                const SizedBox(width: 4),
                SizedBox(
                  width: 290,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 90, child: Text('Chart ref')),
                            SizedBox(width: 16),
                            Text(': Market reversal')
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 90, child: Text('Pairs')),
                            SizedBox(width: 16),
                            Text(': XAAUSD')
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 90, child: Text('UA')),
                            const SizedBox(width: 16),
                            SizedBox(
                              height: 25,
                              child: DropdownButton<String>(
                                value: selectedOption,
                                items:
                                    <String>['BUY', 'SELL'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedOption = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 90, child: Text('Entry Price')),
                            SizedBox(width: 16),
                            Text('')
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 90, child: Text('TP Price')),
                            const SizedBox(width: 16),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.black26,
                                  )),
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: const Text('1930.00'),
                            ),
                            const SizedBox(width: 2),
                            const Text('(+1000 Pips)')
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 90, child: Text('SL Price')),
                            const SizedBox(width: 16),
                            Container(
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.black26,
                                    )),
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: const Text('XAAUSD')),
                            const SizedBox(width: 2),
                            const Text('(-1000 Pips)')
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                                width: 90, child: Text('Expired Time')),
                            const SizedBox(width: 16),
                            Text(selectedFormattedDate),
                            const SizedBox(width: 16),
                            GestureDetector(
                              onTap: () => _selectDate(context),
                              child: const Icon(Icons.calendar_month),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 90, child: Text('Signal Price')),
                            SizedBox(width: 16),
                            Text('\$10')
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorName.red,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 2),
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(color: ColorName.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 4),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorName.blue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 2),
                                  child: Text(
                                    'Share',
                                    style: TextStyle(color: ColorName.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Handle button press for Option 1
//                   setState(() {
//                     SelectedShareOption = '4 Weeks = 20';
//                   });
//                 },
//                 child: const Text('4 Weeks = 20'),
//               ),
//             ),
