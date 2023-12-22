part of '../charts_page.dart';

class ChartsItemWidget extends StatelessWidget {
  const ChartsItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const DetailItemPage(color: ColorName.blue, status: 'Subscribe',),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorName.lightBlue),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Assets.images.profileCharts.image(width: 40),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FX Power',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
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
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    const DialogOptionButton(),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorName.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 4),
                                child: Text(
                                  'Subcribe',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            'Free 3 Days',
                            style: TextStyle(color: ColorName.green),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Divider(
                    thickness: 1,
                    color: ColorName.blue,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Assets.images.charts.image(height: 100),
                      const SizedBox(width: 8),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Back Test'),
                          SizedBox(height: 4),
                          Text('Forward Test'),
                          SizedBox(height: 4),
                          Text('Subscriber'),
                          SizedBox(height: 4),
                          Text('Signals Avg'),
                          SizedBox(height: 4),
                          Text('Review'),
                        ],
                      ),
                      const SizedBox(width: 8),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(': 80%'),
                            const SizedBox(height: 4),
                            const Text(': 80%'),
                            const SizedBox(height: 4),
                            const Text(': 1.2k'),
                            const SizedBox(height: 4),
                            const Text(': 3 / Days'),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Text(': 5.0'),
                                Assets.icon.star.svg(),
                              ],
                            ),
                          ]),
                    ],
                  ),
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
