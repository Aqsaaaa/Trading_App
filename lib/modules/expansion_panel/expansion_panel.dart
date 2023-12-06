import 'package:flutter/material.dart';
import 'package:trading_app/gen/colors.gen.dart';

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
    this.transactionValue,
    this.showOrderedListNumber = true,
  });

  List<Map<String, String?>> expandedValue;
  String headerValue;
  bool isExpanded;
  String? transactionValue;
  bool showOrderedListNumber;
}

class ExpansionPanelListExample extends StatefulWidget {
  final List<Item> data;
  final Color headerColor;
  final Color bodyColor;
  final double bodyFontSize;
  final Color bodyTextColor;
  final Color? dividerColor;

  const ExpansionPanelListExample({
    Key? key,
    required this.data,
    this.headerColor = Colors.black,
    this.bodyColor = ColorName.grey,
    this.bodyFontSize = 14.0,
    this.bodyTextColor = Colors.black,
    this.dividerColor = Colors.grey,
  }) : super(key: key);

  @override
  State<ExpansionPanelListExample> createState() =>
      _ExpansionPanelListExampleState();
}

class _ExpansionPanelListExampleState extends State<ExpansionPanelListExample> {
  late List<Item> _data;

  @override
  void initState() {
    super.initState();
    _data = widget.data;
  }

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
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      item.headerValue,
                      style: TextStyle(color: widget.headerColor),
                    ),
                  ),
                  Text(item.transactionValue ?? '',
                      style: const TextStyle(color: ColorName.blue)),
                ],
              ),
            );
          },
          body: Container(
            decoration: BoxDecoration(
              color: widget.bodyColor,
            ),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(item.expandedValue.length, (index) {
                  final title = item.expandedValue[index]['title'];
                  final value = item.expandedValue[index]['value'];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (item.showOrderedListNumber)
                        Expanded(
                          child: Text(
                            '${index + 1}. $title',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            )
                          ),
                        )
                      else
                      Expanded(
                        child: Text(
                          '$title',
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        value ?? '',
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
