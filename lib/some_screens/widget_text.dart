import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  const WidgetText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        children: [
          Text("Heading", style: TextStyle(color: Colors.brown.shade900, fontWeight: FontWeight.bold, fontSize: 20),),
          Text("Description", style: TextStyle(color: Colors.brown.shade700, fontWeight: FontWeight.normal, fontSize: 16),),
        ],
      ),
    );
            
  }
}