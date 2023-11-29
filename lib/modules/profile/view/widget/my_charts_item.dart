part of '../my_charts_list.dart';

class MychartsItemWidget extends StatelessWidget {
  final String type;
  final Color color;
  final Color bgColor;

  const MychartsItemWidget(
      {Key? key,
      required this.type,
      required this.color,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Assets.images.profileCharts.image(width: 40),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FX Power',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Market Type: Currencies | XAAUSD',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: ColorName.blue),
                ),
                Text(
                  'Created By System (May 12, 2023)',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  child: Text(
                    type,
                    style: TextStyle(color: color),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        Assets.images.charts.image(),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Assets.icon.users.svg(),
                const SizedBox(width: 4),
                const Text(
                  '1283',
                  style: TextStyle(color: ColorName.blue),
                ),
                const SizedBox(width: 8),
                Assets.icon.star.svg(),
                const SizedBox(width: 4),
                const Text('5.0'),
              ],
            ),
            Row(
              children: [
                const Text('BT : 80% | FT : 80% | ',
                    style: TextStyle(color: ColorName.blue)),
                Assets.icon.signal.svg(),
                const Text('signals'),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(
          thickness: 0.5,
          color: Colors.black,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
