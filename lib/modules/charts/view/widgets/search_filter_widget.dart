part of '../charts_page.dart';

class SearchFilterWidget extends StatelessWidget {
  const SearchFilterWidget({Key? key}) : super(key: key);

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
                  Icons.filter_list,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Add your filter button logic here
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
