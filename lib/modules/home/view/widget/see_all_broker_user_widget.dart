part of '../see_all_page.dart';

class SeeAllBrokerUserWidget extends StatelessWidget {
  const SeeAllBrokerUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
          border: Border.all(color: ColorName.blue)),
      padding: const EdgeInsets.all(16),
      child: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Broker'),
                Text('Active User'),
              ],
            ),
            BrokerUserItem(),
            BrokerUserItem(),
            BrokerUserItem(),
            BrokerUserItem(),
            BrokerUserItem(),
            BrokerUserItem(),
          ],
        ),
      ),
    );
  }
}

class BrokerUserItem extends StatelessWidget {
  const BrokerUserItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Assets.images.brokerDisplay.image(scale: 0.8),
                const SizedBox(width: 8),
                const Text(
                  'FP Market',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.person,
                  color: ColorName.blue,
                ),
                Text(
                  '1200',
                  style: TextStyle(color: ColorName.blue),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
