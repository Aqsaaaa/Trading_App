import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: ColorName.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: ColorName.blue,
            width: 2,
          )),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Assets.images.profile2.image(height: 50),
                    ),
                    const SizedBox(),
                    const Text('Jamal'),
                  ],
                ),
                const SizedBox(width: 8),
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chart Ref'),
                        SizedBox(height: 4),
                        Text('Pairs'),
                        SizedBox(height: 4),
                        Text('Pairs'),
                        SizedBox(height: 4),
                        Text('Entry Price'),
                        SizedBox(height: 4),
                        Text('TP Price'),
                        SizedBox(height: 4),
                        Text('SL Price'),
                        SizedBox(height: 4),
                        Text('Expired Time'),
                        SizedBox(height: 4),
                        Text('Signal Price'),
                        SizedBox(height: 4),
                      ],
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(': FX Power'),
                        const SizedBox(height: 4),
                        const Text(': XAUUSD'),
                        const SizedBox(height: 4),
                        const Text(''),
                        const SizedBox(height: 4),
                        const Text(''),
                        const SizedBox(height: 4),
                        const SizedBox(height: 4),
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          width: 145,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text('\$10'),
                        ),
                        const SizedBox(height: 4),
                        const Text(': '),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          width: 145,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text('\$10'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
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
