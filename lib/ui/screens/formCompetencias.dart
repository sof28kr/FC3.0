import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormularioCompetencias extends StatelessWidget {
  const FormularioCompetencias({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Column(
          children: [
            Column(
              children: [
                PreguntaCheckBox(),
                PreguntaCheckBox(),
                PreguntaOpcionUnica2(),
                PreguntaOpcionUnica(),
                Padding(
                  padding: EdgeInsets.all(40),
                  child: FilledButton(
                      onPressed: () {}, child: const Text('Finalizar')),
                ),
              ],
            ),
          ],
        ),
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
    return Material(
      child: Column(
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
      ),
    );
  }
}

class PreguntaOpcionUnica extends StatelessWidget {
  PreguntaOpcionUnica({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          width: 50,
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "Aqui va la Segunda pregunta:",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const PreguntaRadioButon()
      ],
    );
  }
}

enum OpcionesRadioButon { si, no }

class PreguntaRadioButon extends StatefulWidget {
  const PreguntaRadioButon({super.key});

  @override
  State<PreguntaRadioButon> createState() => _PreguntaRadioButonState();
}

class _PreguntaRadioButonState extends State<PreguntaRadioButon> {
  OpcionesRadioButon? _opciones = OpcionesRadioButon.si;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<OpcionesRadioButon>(
          title: const Text('Si'),
          value: OpcionesRadioButon.si,
          groupValue: _opciones,
          onChanged: (OpcionesRadioButon? value) {
            setState(() {
              _opciones = value;
            });
          },
        ),
        RadioListTile<OpcionesRadioButon>(
          title: const Text('No'),
          value: OpcionesRadioButon.no,
          groupValue: _opciones,
          onChanged: (OpcionesRadioButon? value) {
            setState(() {
              _opciones = value;
            });
          },
        ),
      ],
    );
  }
}

class PreguntaOpcionUnica2 extends StatelessWidget {
  const PreguntaOpcionUnica2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          width: 50,
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "Aqui va la Segunda pregunta:",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const PreguntaRadioButon()
      ],
    );
  }
}

enum OpcionesRadioButon2 { si, no }

class PreguntaRadioButon2 extends StatefulWidget {
  const PreguntaRadioButon2({super.key});

  @override
  State<PreguntaRadioButon2> createState() => _PreguntaRadioButonState2();
}

class _PreguntaRadioButonState2 extends State<PreguntaRadioButon2> {
  OpcionesRadioButon2? _opciones = OpcionesRadioButon2.si;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<OpcionesRadioButon2>(
          title: const Text('Si'),
          value: OpcionesRadioButon2.si,
          groupValue: _opciones,
          onChanged: (OpcionesRadioButon2? value) {
            setState(() {
              _opciones = value;
            });
          },
        ),
        RadioListTile<OpcionesRadioButon2>(
          title: const Text('No'),
          value: OpcionesRadioButon2.no,
          groupValue: _opciones,
          onChanged: (OpcionesRadioButon2? value) {
            setState(() {
              _opciones = value;
            });
          },
        ),
      ],
    );
  }
}
