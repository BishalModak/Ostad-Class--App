import 'package:flutter/material.dart';

class UiDesign extends StatefulWidget {
  const UiDesign({super.key});

  @override
  State<UiDesign> createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {
  void _productDialogue() {
    TextEditingController productNameController = TextEditingController();
    TextEditingController productQtyController = TextEditingController();
    TextEditingController productImgController = TextEditingController();
    TextEditingController productUnitPriceController = TextEditingController();
    TextEditingController productTotalPriceController = TextEditingController();

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('Add Product', style: TextStyle(color: Colors.black)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Product Name'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Product Name'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Product Name'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Product Name'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Product Name'),
                ),
              ],
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product CRUD'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => _productDialogue(),
        child: Icon(Icons.add),
      ),
    );
  }
}
