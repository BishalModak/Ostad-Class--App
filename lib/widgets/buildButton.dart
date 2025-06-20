import 'package:flutter/material.dart';
class buildButton extends StatelessWidget {
  String text;
  Color ? color;
  final VoidCallback onClick;
  buildButton({
    super.key,
    required this.onClick,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(24),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
                backgroundColor: color ?? Colors.grey[800]
            ),
        
            onPressed: onClick
            , child: Text(text, style: TextStyle(
            color: Colors.white,
            fontSize: 18
        ),)),
      ),
    );
  }
}