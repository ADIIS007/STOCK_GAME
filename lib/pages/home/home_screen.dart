import 'package:flutter/material.dart';
import 'package:stock_game/pages/home/summary_tile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Investment Statistics'
        ),
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer.withAlpha(500),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SummaryDataWidget(title: 'Stocks', invested: 100, currentValue: 200),
              SummaryDataWidget(title: 'Currency', invested: 50, currentValue: 5000),
              SummaryDataWidget(title: 'Cryptocurrency', invested: 100, currentValue: 10),
            ],
          ),
        ),
      ),
    );
  }
}
