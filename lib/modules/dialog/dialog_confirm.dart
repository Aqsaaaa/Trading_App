import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

class DialogConfirm extends StatefulWidget {
  const DialogConfirm({Key? key});

  @override
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
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Are you sure want to unsubscribe this charts?',
                textAlign: TextAlign.center),
            const SizedBox(height: 21),
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
                      // Handle cancel button press
                      Navigator.pop(context); // Close the dialog
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: ColorName.white),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(ColorName.red),
                    ),
                    onPressed: () {
                      // Handle subscribe button press
                      Navigator.pop(context,
                          selectedOption); // Close the dialog with the selected option
                    },
                    child: Text(
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
