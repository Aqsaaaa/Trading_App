import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

class DialogOptionButton extends StatefulWidget {
  const DialogOptionButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DialogOptionButtonState createState() => _DialogOptionButtonState();
}

class _DialogOptionButtonState extends State<DialogOptionButton> {
  String selectedOption = ''; // Variable to store the selected option

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Display text buttons for options
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press for Option 1
                  setState(() {
                    selectedOption = '4 Weeks = 20';
                  });
                },
                child: const Text('4 Weeks = 20'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press for Option 2
                  setState(() {
                    selectedOption = '3 Weeks = 15';
                  });
                },
                child: const Text('3 Weeks = 15'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press for 2 Weeks = 10
                  setState(() {
                    selectedOption = '2 Weeks = 10';
                  });
                },
                child: const Text('2 Weeks = 10'),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(ColorName.red),
                    ),
                    onPressed: () {
                      // Handle cancel button press
                      Navigator.pop(context); // Close the dialog
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: ColorName.white),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(ColorName.blue),
                    ),
                    onPressed: () {
                      // Handle subscribe button press
                      Navigator.pop(context,
                          selectedOption); // Close the dialog with the selected option
                    },
                    child: const Text(
                      'Confirm',
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
