part of '../displayed_page.dart';

class DisplayedSearchFilterWidget extends StatelessWidget {
  const DisplayedSearchFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: ColorName.white,
                  border: Border.all(color: ColorName.blue)),
              child: IconButton(
                icon: const Icon(
                  Icons.filter_list_outlined,
                  color: Colors.blue,
                ),
                onPressed: () {
                  showMenu(
                    context: context,
                    position: const RelativeRect.fromLTRB(0, 200, 0, 0),
                    items: [
                      const PopupMenuItem<String>(
                        value: 'Indices',
                        child: Text('Indices'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Indices Future',
                        child: Text('Indices Future'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Stocks',
                        child: Text('Stocks'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Commodities',
                        child: Text('Commodities'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Currencies',
                        child: Text('Currencies'),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(
                    color: ColorName.lightGrey,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: ColorName.lightGrey,
                      ),
                      hintText: 'Search Charts',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ColorName.blue,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        const DialogFilterOptionButton(),
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
