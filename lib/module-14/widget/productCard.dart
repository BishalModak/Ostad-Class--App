import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const ProductCard({
    super.key, required this.onEdit, required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 140,
            child: Image.network(
                'https://i5.walmartimages.com/seo/Simple-Mobile-Apple-iPhone-12-64GB-Black-Prepaid-Smartphone-Locked-to-Simple-Mobile_66b2853b-6cb5-4f20-b73a-b60b39b6de44.6b3bf83a920058a47342318925f1dc2b.jpeg'),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Product name', style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                ),

                ),
                Text('Price: 50 | QTY : 20', style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                ),

                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: onEdit,
                    icon: Icon(Icons.edit, color: Colors.orange,)),
                SizedBox(width: 10,),
                IconButton(onPressed: onDelete,
                    icon: Icon(Icons.delete, color: Colors.red,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
