part of '../displayed_page.dart';

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
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    const DialogShareSignal(),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorName.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                                child: Text(
                                  'Share Signal',
                                  style: TextStyle(color: ColorName.white),
                                ),
                              ),
                            ),
                          ),
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

class DisplayedChartsItemWidget extends StatelessWidget {
  const DisplayedChartsItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const DetailItemPage(),
          ),
        );
      },
      child: Column(
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
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            const DialogConfirm(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Text(
                          'Unsubscribe',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    '3 days Left',
                    style: TextStyle(color: ColorName.yellow),
                  ),
                ],
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
                  GestureDetector(
                    onTap: () {
                      _bottomSheetitem(context);
                    },
                    child: Row(children: [
                      Assets.icon.signal.svg(),
                      const Text('signals'),
                    ]),
                  )
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
      ),
    );
  }
}

class DisplayedChartsMyItemWidget extends StatelessWidget {
  const DisplayedChartsMyItemWidget({Key? key}) : super(key: key);

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
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorName.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      child: Text(
                        'Created By You',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 2),
              ],
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
                GestureDetector(
                  onTap: () {
                    _bottomSheetitem(context);
                  },
                  child: Row(children: [
                    Assets.icon.signal.svg(),
                    const Text('signals'),
                  ]),
                )
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

class DisplayedAllChartsItemWidget extends StatelessWidget {
  const DisplayedAllChartsItemWidget({Key? key}) : super(key: key);

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
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => const DialogConfirm(),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorName.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Text(
                        'Subscribe',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  '3 days Left',
                  style: TextStyle(color: ColorName.yellow),
                ),
              ],
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
                GestureDetector(
                  onTap: () {
                    _bottomSheetitem(context);
                  },
                  child: Row(children: [
                    Assets.icon.signal.svg(),
                    const Text('signals'),
                  ]),
                )
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
