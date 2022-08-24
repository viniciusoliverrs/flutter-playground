import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final int _expandedIndex = -1;
  final List<ProductModel> _products = ProductModel.randomGenerate(8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product View')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() => _products[index].isExpanded = !isExpanded);
            },
            children: _products.map((ProductModel product) {
              return ExpansionPanel(
                isExpanded: product.isExpanded,
                canTapOnHeader: true,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    leading: CircleAvatar(child: Text(product.id.toString())),
                    title: Text(product.name)
                  );
                },
                body: ListTile(
                  title: Text(product.description),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ProductModel {
  int id;
  String name;
  String description;
  bool isExpanded;

  ProductModel(this.id, this.name, this.description, this.isExpanded);

  static List<ProductModel> randomGenerate(int qnt) {
    return List.generate(qnt, (index) {
      index += 1;
      return ProductModel(
        index,
        'Product $index',
        'Description $index',
        false,
      );
    });
  }
}
