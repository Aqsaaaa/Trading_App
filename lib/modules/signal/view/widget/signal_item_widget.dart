part of '../signal_page.dart';

class ProfileInfoWidget extends StatelessWidget {
  final String name;
  final String subscribe;
  final Color color;
  const ProfileInfoWidget({
    Key? key,
    required this.name,
    required this.subscribe,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                ClipOval(
                  child: Container(
                    color: Colors.blue, // Replace with actual image or color
                    width: 50.0, // Set your desired width
                    height: 50.0, // Set your desired height
                    child: Center(
                      child: Assets.images.prodile.image(),
                    ), // Replace with actual image
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(fontSize: 16.0),
                ), // Space between profile image and texts
              ],
            ),
            const SizedBox(width: 8.0),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Chart Ref', style: TextStyle(fontSize: 11)),
                Text('Total Share', style: TextStyle(fontSize: 11)),
                Text('Win', style: TextStyle(fontSize: 11)),
                Text('Losses', style: TextStyle(fontSize: 11)),
                Text('Winning Ratio', style: TextStyle(fontSize: 11)),
                Text('Latest Shared', style: TextStyle(fontSize: 11)),
              ],
            ),
            const SizedBox(
              width: 8,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(': Market Ref',
                    style:
                        TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                Text(':110 Signals(+2000 pips)',
                    style:
                        TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                Text(': 100 Signals(+10.000 pips)',
                    style:
                        TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                Text(': 20 Signals(-8000 pips)',
                    style:
                        TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                Text(': 83.33%',
                    style:
                        TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                Text(': Today, 9:30',
                    style:
                        TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      child: Text(
                        subscribe,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  'Price: 100/signals',
                  style: TextStyle(color: ColorName.green, fontSize: 10),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          height: 10,
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
