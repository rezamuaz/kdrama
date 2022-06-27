import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LatestPlayerStatus extends StatelessWidget {
  const LatestPlayerStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Episode 1',
              style: TextStyle(fontSize: 14),
            ),
            Text('45 min', style: TextStyle(fontSize: 14))
          ],
        ),
        const SizedBox(height: 10),
        LinearPercentIndicator(
          padding: const EdgeInsets.all(0.0),
          percent: 0.6,
          progressColor: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 45,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              child: const Text('Lanjutkan Menonton',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500))),
        )
      ],
    );
  }
}
