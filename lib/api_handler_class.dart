import 'package:api_listview_flutte_demo/Catalog_model.dart';
import 'package:api_listview_flutte_demo/itemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class api_handler_class extends StatefulWidget {
  const api_handler_class({super.key});

  @override
  State<api_handler_class> createState() => _api_handler_classState();
}

class _api_handler_classState extends State<api_handler_class> {
  final dummy_list = List.generate(20, (index) => Catalog_model.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Items Listview")),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: dummy_list.length,
            itemBuilder: (context, index) =>
                itemWidget(item: dummy_list[index]),
          )),
    );
  }
}
