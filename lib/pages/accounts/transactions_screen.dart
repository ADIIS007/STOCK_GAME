import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:stock_game/Utils/Constants/string_constants.dart';
import 'package:stock_game/Utils/DTO/transaction_data.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  late List<Transactions> trans;
  bool isReady = false;

  void _load() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isReady = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    trans = Trans;
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return isReady
        ? ListView.builder(
            itemCount: trans.length,
            itemBuilder: (context, index) {
              return _transactionListTile(index);
            },
          )
        : Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
                color: Theme.of(context).primaryColorDark, size: 50));
  }

  Widget _transactionListTile(int index) {
    return ListTile(
      leading: trans[index].isIncome
          ? const Icon(
              Icons.arrow_downward,
              color: Colors.greenAccent,
            )
          : const Icon(
              Icons.arrow_upward,
              color: Colors.red,
            ),
      title: Text(trans[index].stock),
      subtitle: Text(
        'Quantity: ${trans[index].quantity}\n Value: ${trans[index].money}',
        style: const TextStyle(fontSize: 7),
      ),
      trailing: Text('Total ${trans[index].total}'),
    );
  }
}
