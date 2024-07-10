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
  var providerControllerNotify;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 4),
          () => providerControllerNotify.changeName("Roberto Carlos da Silva"));
    });
  }

  @override
  Widget build(BuildContext context) {
    print('BUILD');
    providerControllerNotify = Provider.of<ProviderNotifyController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Notifier Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Selector<ProviderNotifyController,String>(
            selector:(context,controller) => controller.urlImage,
            builder: (_, urlImage, __) {
              return Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    urlImage,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Selector<ProviderNotifyController,String>(
            selector: (_, controller) => controller.name,
            builder: (_, name, __) {
              return Text(
                "Nome : $name",
                style: const TextStyle(fontSize: 20),
              );
            },
          ),
          const SizedBox(height: 20),
          Selector<ProviderNotifyController,String>(
            selector: (_, controller) => controller.bornDate ,
            builder: (_, bornDate, __) {
              return Text(
                "Ano de Nacimento : $bornDate",
                style: const TextStyle(fontSize: 20),
              );
            },
          ),
          const SizedBox(height: 10),
          Provider(
            create: (context) =>
                ProdutoModel(nome: "This names he's Providers "),
            child: ProdutoWidget(),
          ),
          ElevatedButton(
            onPressed: () =>
                providerControllerNotify.changeName("Breno Kardoso"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.red;
                  }
                  return null;
                },
              ),
            ),
            child: const Text(
              "Change name",
            ),
          )
        ],
      ),
    );
  }
}
