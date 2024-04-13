import 'package:app_fisio_tcc/assets/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'navegation_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green2,
      appBar: AppBar(
        backgroundColor: const Color(0xff4a9700),
        title: const Column(
          children: [
            Text(
              'FisioConecta',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: AppColors.whiteApp),
            ),
            Text(
              'Home',
              style: TextStyle(fontSize: 18, color: AppColors.whiteApp),
            ),
          ],
        ),
        toolbarHeight: 72,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/pacientes');
        },
        child: const Icon(Icons.add),
        backgroundColor: const Color(0xff4a9700),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: AppColors.whiteApp,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(18),
          ),
        ),
      ),
      bottomNavigationBar: const NavigacaoBar(),
    );
  }
}
