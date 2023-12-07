import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

class DialogOptionButton extends StatefulWidget {
  const DialogOptionButton({Key? key});

  @override
  _DialogOptionButtonState createState() => _DialogOptionButtonState();
}

class _DialogOptionButtonState extends State<DialogOptionButton> {
  String selectedOption = ''; // Variable to store the selected option

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: ColorName.blue,
            width: 2,
          )
      ),

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
                    selectedOption = 'Option 1';
                  });
                },
                child: const Text('Option 1'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press for Option 2
                  setState(() {
                    selectedOption = 'Option 2';
                  });
                },
                child: const Text('Option 2'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press for Option 3
                  setState(() {
                    selectedOption = 'Option 3';
                  });
                },
                child: const Text('Option 3'),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 115,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(ColorName.red),
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
                  width: 115,
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
                    child: Text(
                      'Subscribe',
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
