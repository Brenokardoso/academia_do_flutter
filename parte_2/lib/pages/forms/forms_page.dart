import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormsPage extends StatefulWidget {
  FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  String digitText = '';
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>(debugLabel: "formKeyDebug");
  TextEditingController formField1Controller = TextEditingController();
  TextEditingController formFieldPasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    formField1Controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms Menssager"),
      ),
      body: StatefulBuilder(
        builder: (context, setState) {
          return Center(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TextField(
                  //   onChanged: (value) => setState(() => digitText = value),
                  // ),
                  // Text("Texto digitado: $digitText"),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Digite para salvar",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.orange, width: 2)),
                      icon: const Icon(Icons.snowshoeing_outlined),
                      suffix: Container(
                        width: 20,
                        height: 30,
                        color: Colors.blue,
                      ),
                    ),
                    validator: (String? value) {
                      if (value == '' || value == null) {
                        return "O campo não pode estar vazio!";
                      }
                      return null;
                    },
                    controller: formField1Controller,
                    onChanged: (value) => setState(() => digitText = value),
                  ),
                  const SizedBox(height: 20),

                  TextFormField(
                    controller: formFieldPasswordController,
                    validator: (value) {
                      if (value == '' || value == null) {
                        return 'A senha não pode ser vazia';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      label: const Text("Senha"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.purple,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                      elevation: 16,
                      decoration: InputDecoration(
                          labelText: "Selecione",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.yellow,
                              ))),
                      validator: (value) => value == null || value == ''
                          ? value = 'Selecione uma opção da caixa de seleção'
                          : null,
                      icon: const Icon(Icons.wallet),
                      items: const [
                        DropdownMenuItem(
                            value: "Item 1", child: Text("Item 1")),
                        DropdownMenuItem(
                            value: "Item 2", child: Text("Item 2")),
                        DropdownMenuItem(
                            value: "Item 3", child: Text("Item 3")),
                        DropdownMenuItem(
                            value: "Item 4", child: Text("Item 4")),
                      ],
                      onChanged: (value) {
                        switch (value) {
                          case 'Item 1':
                            print("Item 1");
                            break;
                          case 'Item 2':
                            print("Item 2");
                            break;
                          case 'Item 3':
                            print("Item 3");
                            break;
                          case 'Item 4':
                            print("Item 4");
                            break;
                        }
                      }),
                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      var formvalid = formKey.currentState?.validate() ?? false;
                      print("Valor do forms : $formvalid");
                      if (formvalid) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Formulário validado com sucesso"),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Formulário Inválido"),
                          ),
                        );
                      }
                      formField1Controller.clear();
                    },
                    child: const Text("Save"),
                  ),
                  Text(digitText),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
