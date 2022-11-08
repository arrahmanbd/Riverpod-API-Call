
import 'package:flutter/material.dart';
import '../models/doc_model.dart';

class Details extends StatelessWidget {
  
  final String e;
  const Details({
    Key? key,
    required this.e,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(e)),
      body: Center(child:Text('Hospital: $e')),
    );
  }
}
