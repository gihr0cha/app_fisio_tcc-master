import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'navegation_page.dart';

class PacientePage extends StatefulWidget {
  const PacientePage({Key? key});

  @override
  State<PacientePage> createState() => _PacientePageState();
}

class _PacientePageState extends State<PacientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paciente'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.go('/registerPacients');
            },
          ),
        ],
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Nome do paciente'),
            subtitle: Text('dd/mm'),
          ),
        ],
      ),
      bottomNavigationBar: const NavigacaoBar(),
    );
  }
}
