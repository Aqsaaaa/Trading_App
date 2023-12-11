part of '../see_all_page.dart';

class SeeAllTradingItemWidget extends StatelessWidget {
  const SeeAllTradingItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorName.lightBlue),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Assets.images.youtube.image(scale: 0.1),
                  const SizedBox(height: 8),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'Forex trading for beginner (full Course) - youtube',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
