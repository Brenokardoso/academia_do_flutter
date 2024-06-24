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
  GlobalKey<FormState> formKey =
      GlobalKey<FormState>(debugLabel: "formKeyDebug");

  TextEditingController formField1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms Menssager"),
      ),
      body: StatefulBuilder(builder: (context, setState) {
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
                  autovalidateMode: AutovalidateMode.disabled,
                  validator: (String? value) {
                    if (value == '' || value == null) {
                      return "O campo não pode estar vazio!";
                    }
                    return null;
                  },
                  controller: formField1Controller,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      var formvalid = formKey.currentState?.validate() ?? false;
                      print("Valor do forms : $formvalid");
                      if (formvalid) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text("Formulário validado com sucesso")));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Formulário Inválido")));
                      }
                      digitText = formField1Controller.value.text;
                      print(" valor do etxto digitado foi de $digitText");
                      formField1Controller.clear();
                    },
                    child: const Text("Save"))
              ],
            ),
          ),
        );
      }),
    );
  }
}
