import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:stock_game/Utils/Constants/string_constants.dart';
import 'package:stock_game/Utils/DTO/market_data.dart';
import 'package:stock_game/pages/search/search_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isReady = false;
  late List<MarketData> md;

  @override
  void initState() {
    super.initState();
    isReady = false;
    _loadData();
  }

  void _loadData() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        md = marketData;
        isReady = true;
      });
    });
  }

  Widget _listTile(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Theme.of(context).colorScheme.tertiaryContainer,
      ),
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: Theme.of(context).colorScheme.secondaryContainer,
        title: Text(md[index].stock.capitalize),
        subtitle: Text(md[index].stockName.capitalize),
        trailing: GestureDetector(child: const Icon(Icons.star_border,size: 30,),onTap: (){
          print('made this favorite ${md[index].stock}');
        },),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Search Demo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: SearchEngine());
            },
          ),
        ],
      ),
      body: Center(
          child: isReady
              ? ListView.builder(
                  itemCount: md.length,
                  itemBuilder: (context, index) {
                    return _listTile(context, index);
                  },
                )
              : LoadingAnimationWidget.horizontalRotatingDots(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  size: 30)),
    ));
  }
}
