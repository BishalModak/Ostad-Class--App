import 'package:fluter_basic/module-14/widget/productCard.dart';
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
                  decoration: InputDecoration(labelText: 'Product Image'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Product QTY'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Product Unit Price'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Product Total Price'),
                ),

                SizedBox(height: 10,),
                Row(
                  children: [
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text('Close')),
                    SizedBox(height: 5,),
                    ElevatedButton(
                      onPressed: () {}, child: Text('Add Product'),)
                  ],
                )
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

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 0.75,
          ), itemBuilder: (context, index) {
        return ProductCard(onEdit: () {
          _productDialogue();
        }, onDelete: () {},);
      }),

      floatingActionButton: FloatingActionButton(
        onPressed: () => _productDialogue(),
        child: Icon(Icons.add),
      ),
    );
  }
}

