import 'package:flutter/material.dart';
import 'package:parte_6_provider/change_notifer/change_notfier_controller.dart';
import 'package:parte_6_provider/provider/produto_model.dart';
import 'package:parte_6_provider/provider/produto_widget.dart';
import 'package:provider/provider.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({super.key});

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  Widget build(BuildContext context) {
    var providerControllerRead = context.read<ProviderNotifyController>();
    var providerControllerNotify =
        Provider.of<ProviderNotifyController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Notifier Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                providerControllerNotify.urlImage,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Nome : ${providerControllerNotify.name}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            "Ano de Nacimento : ${providerControllerNotify.bornDate}",
            style: const TextStyle(fontSize: 20),
          ),
          Provider(
            create: (context) =>
                ProdutoModel(nome: "This names he's Providers "),
            child: ProdutoWidget(),
          ),
        ],
      ),
    );
  }
}
