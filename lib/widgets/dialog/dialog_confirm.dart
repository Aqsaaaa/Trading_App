import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

class DialogConfirm extends StatefulWidget {
  const DialogConfirm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DialogConfirmState createState() => _DialogConfirmState();
}

class _DialogConfirmState extends State<DialogConfirm> {
  String selectedOption = ''; // Variable to store the selected option

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: ColorName.blue,
            width: 2,
          )),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Are you sure want to unsubscribe this charts?',
                textAlign: TextAlign.center),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(ColorName.blue),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: ColorName.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(ColorName.red),
                    ),
                    onPressed: () {
                      Navigator.pop(context, selectedOption);
                    },
                    child: const Text(
                      'Unsubscribe',
                      style: TextStyle(color: ColorName.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
