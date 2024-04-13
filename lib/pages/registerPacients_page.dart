import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../assets/theme_app.dart';

class RegisterPacients extends StatefulWidget {
  const RegisterPacients({super.key});

  @override
  State<RegisterPacients> createState() => _RegisterPacientsState();
}

class _RegisterPacientsState extends State<RegisterPacients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
      child: Column(children: [
        Row(
          children: [
            IconButton(
                onPressed: () => context.go('/home'),
                icon: const Icon(Icons.arrow_back))
          ],
        ),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 0),
            child: const Text('Registre um novo paciente')),
        Form(
            child: Column(
          children: [
            TextFormField(
              style: AppTheme.themeData.inputDecorationTheme.labelStyle,
              decoration: InputDecoration(
                  label: const Text(
                    'Nome completo:',
                    style: TextStyle(color: Colors.black87),
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 24),
            TextFormField(
              style: AppTheme.themeData.inputDecorationTheme.labelStyle,
              decoration: InputDecoration(
                  label: const Text(
                    'Email:',
                    style: TextStyle(color: Colors.black87),
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 24),
            TextFormField(
              style: AppTheme.themeData.inputDecorationTheme.labelStyle,
              decoration: InputDecoration(
                  label: const Text(
                    'Data de Nacimento:',
                    style: TextStyle(color: Colors.black87),
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 24),
            ButtonBar(
              children: [
                ElevatedButton(
                    onPressed: () {
                      // Salvar no banco de dados
                      context.go('/pacientes');
                    },
                    child: const Text('Salvar')),
              ],                  
            )
          ],
        ))
      ]),
    ));
  }
}
