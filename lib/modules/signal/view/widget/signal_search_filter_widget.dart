part of '../signal_page.dart';

class SignalSearchFilterWidget extends StatelessWidget {
  const SignalSearchFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
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
