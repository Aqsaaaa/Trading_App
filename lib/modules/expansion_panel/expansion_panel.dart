import 'package:flutter/material.dart';
import 'package:trading_app/gen/colors.gen.dart';

// stores ExpansionPanel state information
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  List<String> expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return [
    Item(headerValue: 'Internet Banking BRI (Mobile Version)', expandedValue: [
      'Open the BRI Mobile Application and Login to BRI Internet Banking',
      'Select the Payment menu > Briva',
      'Press the "Payment Code" column then enter 88812 8837356 098 as the Briva Number and click "Ok"',
      'Enter the top up amount you want to pay and press "Send". If account virtual number is correct, transaction information will be displayed.',
      'Confirm the transaction by entering yout internet banking password and clicking "Send"'
    ]),
    Item(headerValue: 'BRIMO', expandedValue: [
      'Open the BRI Mobile Application and Login to BRI Internet Banking',
      'Select the Payment menu > Briva',
      'Press the "Payment Code" column then enter 88812 8837356 098 as the Briva Number and click "Ok"',
      'Enter the top up amount you want to pay and press "Send". If account virtual number is correct, transaction information will be displayed.',
      'Confirm the transaction by entering yout internet banking password and clicking "Send"'
    ]),
    Item(headerValue: 'ATM Machine BRI', expandedValue: [
      'Open the BRI Mobile Application and Login to BRI Internet Banking',
      'Select the Payment menu > Briva',
      'Press the "Payment Code" column then enter 88812 8837356 098 as the Briva Number and click "Ok"',
      'Enter the top up amount you want to pay and press "Send". If account virtual number is correct, transaction information will be displayed.',
      'Confirm the transaction by entering yout internet banking password and clicking "Send"'
    ])
  ];
}

class ExpansionPanelListExample extends StatefulWidget {
  const ExpansionPanelListExample({super.key});

  @override
  State<ExpansionPanelListExample> createState() =>
      _ExpansionPanelListExampleState();
}

class _ExpansionPanelListExampleState extends State<ExpansionPanelListExample> {
  final List<Item> _data = generateItems(3);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      elevation: 0,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: Container(
            decoration: BoxDecoration(
              color: ColorName.grey,
            ),
            child: ListTile(
              title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      item.expandedValue.length,
                      (index) =>
                          Text('${index + 1}. ${item.expandedValue[index]}',
                          textAlign: TextAlign.justify,
                          ))),
              subtitle: Text('subtitle'),
            ),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
