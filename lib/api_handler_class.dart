import 'dart:convert';
import 'package:api_listview_flutte_demo/Catalog_model.dart';
import 'package:api_listview_flutte_demo/itemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class api_handler_class extends StatefulWidget {
  const api_handler_class({super.key});

  @override
  State<api_handler_class> createState() => _api_handler_classState();
}

class _api_handler_classState extends State<api_handler_class> {
  var refreshkey = GlobalKey<RefreshIndicatorState>();
  @override
  void initState() {
    readJson();

    super.initState();
  }

  Future<void> readJson() async {
    await Future.delayed(Duration(seconds: 10));

    refreshkey.currentState?.show();

    final String response =
        await rootBundle.loadString('assets/files/api_data.json');

    final decodeddata = await jsonDecode(response);
    var productData = decodeddata["Products"];

    //Map data using below comands
    Catalog_model.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  //final dummy_list = List.generate(20, (index) => Catalog_model.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Items Listview")),
      body: RefreshIndicator(
        key: refreshkey,
        onRefresh: () {
          return readJson();
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          //important to handling nullo pointer exception when we fetch data from server then it will  work
          child: (Catalog_model.items != null && Catalog_model.items.isNotEmpty)
              ? ListView.builder(
                  itemCount: Catalog_model.items.length,
                  itemBuilder: (context, index) =>
                      itemWidget(item: Catalog_model.items[index]),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
