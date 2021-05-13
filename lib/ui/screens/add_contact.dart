import 'package:flutter/material.dart';

import '../shared/constans.dart';
import '../shared/constans.dart';
import '../shared/constans.dart';

class AddContactScreen extends StatefulWidget {
  @override
  _AddContactScreenState createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adicionar contato")),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
          horizontal: DefaultSizeValues.SMALL,
          vertical: DefaultSizeValues.LARGE),
      child: Form(
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(labelText: "Nome")),
            TextFormField(decoration: InputDecoration(labelText: "Telefone")),
            DropdownButton(
              items: <DropdownMenuItem<String>>[],
              isExpanded: true,
              isDense: false,
              hint: Text("Grupo social"),
            ),
            TextFormField(decoration: InputDecoration(labelText: "Email")),
            TextFormField(decoration: InputDecoration(labelText: "Endereço")),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  _buildButtons() {
    return Padding(
      padding: const EdgeInsets.only(top: DefaultSizeValues.REGULAR),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Voltar", style: TextStyle(fontSize: 18)),
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text("Salvar", style: TextStyle(fontSize: 18)))
        ],
      ),
    );
  }
}
