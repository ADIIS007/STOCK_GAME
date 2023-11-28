import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:stock_game/Utils/Constants/string_constants.dart';
import 'package:u_credit_card/u_credit_card.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  bool isReady = false;
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';

  void _load() {
    //make sure to enable destroy here
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        isReady = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    isReady = false;
    cardNumber = CARD_NUMBER;
    expiryDate = EXPIRY_DATE;
    cardHolderName = CARD_NAME;
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(
        child: isReady
            ? CreditCardUi(
                cardHolderFullName: cardHolderName,
                cardNumber: cardNumber,
                validThru: expiryDate,
                topLeftColor: Theme.of(context).colorScheme.tertiary,
                bottomRightColor: Theme.of(context).colorScheme.errorContainer,
                scale: 1.2,
              )
            : LoadingAnimationWidget.twistingDots(
                leftDotColor: Theme.of(context).colorScheme.errorContainer,
                rightDotColor: Theme.of(context).colorScheme.primary,
                size: 50,
              ),
      ),
    );
  }
}
