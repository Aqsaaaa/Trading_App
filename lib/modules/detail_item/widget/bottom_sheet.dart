part of '../view/detail_item_page.dart';

void _bottomSheetitem(BuildContext context) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(12),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Chart ref: FX Power',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const PersonalSignalPage(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorName.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                                child: Text(
                                  'Provider',
                                  style: TextStyle(color: ColorName.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  ItemModal(
                    image: Assets.images.sandSignal.image(),
                  ),
                  ItemModal(
                    image: Assets.images.expiredSignal.image(),
                  ),
                  ItemModal(
                    image: Assets.images.dangerSignal.image(),
                  ),
                  ItemModal(
                    image: Assets.images.succesSignal.image(),
                  ),
                  ItemModal(
                    image: Assets.images.forbiddenSignal.image(),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

void _bottomSheetFormType(BuildContext context) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(12),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Type'),
                DropdownButton<String>(
                  hint: const Text('Choose'),
                  onChanged: (String? newValue) {},
                  items: <String>['Buy', 'Sell']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the current bottom sheet
                      _bottomSheetFormTpPrice(context); // Open new bottom sheet
                    },
                    icon: const Icon(Icons.keyboard_arrow_right_rounded)),
              ],
            ),
          ],
        ),
      );
    },
  );
}

void _bottomSheetFormTpPrice(BuildContext context) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(12),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('TP Price'),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter TP Price',
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter TP price';
                      }
                      return null;
                    },
                  ),
                ),
                const Text('(+1000 Pips)'),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _bottomSheetFormSlPrice(context);
                    },
                    icon: const Icon(Icons.keyboard_arrow_right_rounded)),
              ],
            ),
          ],
        ),
      );
    },
  );
}

void _bottomSheetFormSlPrice(BuildContext context) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(12),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('SL Price'),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter SL Price',
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter SL price';
                      }
                      return null;
                    },
                  ),
                ),
                const Text('(- 1000 Pips)'),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _bottomSheetFormSignalPrice(context);
                    },
                    icon: const Icon(Icons.keyboard_arrow_right_rounded)),
              ],
            ),
          ],
        ),
      );
    },
  );
}

void _bottomSheetFormSignalPrice(BuildContext context) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(12),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Signal Price'),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter Signal Price',
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Signal price';
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          const DialogShareSignal(),
                    );
                  },
                  child: const Text('Share'),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

// void _bottomSheetFormExpiry(BuildContext context) {
//   showModalBottomSheet(
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(
//         top: Radius.circular(12),
//       ),
//     ),
//     context: context,
//     builder: (BuildContext context) {
//       return const SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Column(
//                 children: [],
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
