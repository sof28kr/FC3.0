import 'package:flutter/material.dart';
import 'package:myapp/ui/bloques/menu_items.dart';
import 'package:myapp/ui/screens/formCompetencias.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicativo"),
      ),
      body: const FormularioCompetencias(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final MenuItem = appMenuItems[index];
        return const Text("data");
      },
    );
  }
}
