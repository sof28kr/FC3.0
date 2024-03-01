import 'package:flutter/material.dart';

class FormularioCompetencias extends StatelessWidget {
  const FormularioCompetencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Competencias F1"),
        ),
        body: const Column(
          children: [
            PreguntaCheckBox(),
            SnackBarPage(),
          ],
        ));
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Felicitaciones! Completaste la encuesta!'),
            action: SnackBarAction(
              label: 'Reiniciar?',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Finalizar'),
      ),
    );
  }
}

// Widget de la pregunta
class PreguntaCheckBox extends StatelessWidget {
  const PreguntaCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 50,
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "Aqui va la Primera pregunta:",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const MultipleCheckbox()
      ],
    );
  }
}

// Las opciones de la
class MultipleCheckbox extends StatefulWidget {
  const MultipleCheckbox({super.key});

  @override
  State<MultipleCheckbox> createState() => _MultipleCheckboxState();
}

class _MultipleCheckboxState extends State<MultipleCheckbox> {
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;
  var suma = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Primera opcion de la lista
        CheckboxListTile(
          value: checkboxValue1,
          onChanged: (bool? value) // el valor de default es nulo
              {
            setState(() {
              checkboxValue1 = value!;
            });
          },
          title: const Text("Opcion 2"),
          subtitle: const Text("Descripcion de la opcion 2"),
          controlAffinity: ListTileControlAffinity.platform,
        ),

        const Divider(height: 12),

        CheckboxListTile(
          value: checkboxValue2,
          onChanged: (bool? value) // el valor de default es nulo
              {
            setState(() {
              checkboxValue2 = value!;
            });
          },
          title: const Text("Opcion 2"),
          subtitle: const Text("Descripcion de la opcion 2"),
          controlAffinity: ListTileControlAffinity.platform,
        ),

        const Divider(height: 12),
        CheckboxListTile(
          value: checkboxValue3,
          onChanged: (bool? value) // el valor de default es nulo
              {
            setState(() {
              checkboxValue3 = value!;
            });
          },
          title: const Text("Opcion 3"),
          subtitle: const Text("Descripcion de la opcion 3"),
        ),

        const Divider(height: 12),
      ],
    );
  }
}
