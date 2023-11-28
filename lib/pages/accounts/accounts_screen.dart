import 'package:flutter/material.dart';
import 'package:stock_game/pages/accounts/card_screen.dart';
import 'package:stock_game/pages/accounts/transactions_screen.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: const CreditCardScreen()),
        const Text(
          'TRANSACTIONS',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Expanded(child: TransactionsScreen()),
      ],
    );
  }
}
