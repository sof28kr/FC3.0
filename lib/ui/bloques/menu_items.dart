import 'package:flutter/material.dart' show IconData, Icons;
 // items reausables para los menus

class MenuItem {
  final String tittle;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.tittle, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    tittle: "Nuevo Formulario", 
    subtitle: "Crea un nuevo formulario", 
    link: "/NuevoFormulario", 
    icon: Icons.checklist_rounded, 
  ),
  
  MenuItem(
    tittle: "Que es?", 
    subtitle: "Da informacion sobre la aplicacion", 
    link: "/QueEs?", 
    icon: Icons.question_mark_rounded, 
  ),

  MenuItem(
    tittle: "Iniciar", 
    subtitle: "Inicia con las preguntas del questionario", 
    link: "/Inicio", 
    icon: Icons.star_border_rounded, 
  ),

  MenuItem(
    tittle: "Resultado", 
    subtitle: "Muestra los puntajes del formulario", 
    link: "/Resultados", 
    icon: Icons.sports_score_rounded, 
  ),

  MenuItem(
    tittle: "Hoja de Ruta", 
    subtitle: "Muestra la hoja de ruta recomendada", 
    link: "/HojaDeRuta", 
    icon: Icons.sports_score_rounded, 
  ),

  MenuItem(
    tittle: "Nuevo Calculo", 
    subtitle: "Crea un nuevo Formulario", 
    link: "/NuevoFormulario", 
    icon: Icons.checklist_rounded, 
  ),

  

];