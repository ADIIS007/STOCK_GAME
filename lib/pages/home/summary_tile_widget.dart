import 'package:flutter/material.dart';

class SummaryDataWidget extends StatelessWidget {
  SummaryDataWidget(
      {super.key,
      required this.title,
      required this.invested,
      required this.currentValue}) {
    pl = invested == 0 ? 0 : ((currentValue - invested) / invested);
  }

  String title;
  double invested;
  double currentValue;
  double pl = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16.0),
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
            const Divider(),
            ListTile(
              title: Text(
                'Current Value',
                style: TextStyle(color: pl < 0 ? Colors.red : Colors.green),
              ),
              trailing: Text(
                '$currentValue ($pl%)',
                style: TextStyle(
                    color: pl < 0 ? Colors.red : Colors.green, fontSize: 15),
              ),
            ),
            ListTile(
              title: const Text('Invested'),
              trailing: Text(
                '$invested',
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ],
        ));
  }
}
