import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parte_6_provider/provider/produto_model.dart';
import 'package:provider/provider.dart';

class ProdutoWidget extends StatelessWidget {
  ProdutoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text(context.read<ProdutoModel>().nome),
    );
  }
}
