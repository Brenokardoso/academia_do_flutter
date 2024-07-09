import 'package:flutter/material.dart';
import 'package:parte_6_provider/provider/produto_model.dart';
import 'package:parte_6_provider/provider/produto_widget.dart';
import 'package:parte_6_provider/provider/user_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({super.key});

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    var providerUserModel = Provider.of<UserModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  providerUserModel.imgAvatarUrl,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Nome : ${providerUserModel.name}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              "Ano de Nacimento : ${providerUserModel.bithDate}",
              style: const TextStyle(fontSize: 20),
            ),
            Provider(
              create: (context) => ProdutoModel(nome: "Provider"),
              child: ProdutoWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
