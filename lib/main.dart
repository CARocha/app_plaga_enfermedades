import 'package:app_plaga_enfermedades/src/pages/decisiones/decisiones_form.dart';
import 'package:app_plaga_enfermedades/src/pages/decisiones/decisiones_page.dart';
import 'package:app_plaga_enfermedades/src/pages/decisiones/reporte_page.dart';
import 'package:app_plaga_enfermedades/src/pages/estaciones/estaciones_page.dart';
import 'package:app_plaga_enfermedades/src/pages/finca/finca_form.dart';
import 'package:app_plaga_enfermedades/src/pages/finca/finca_page.dart';
import 'package:app_plaga_enfermedades/src/pages/parcelas/parcela_form.dart';
import 'package:app_plaga_enfermedades/src/pages/parcelas/parcelas_page.dart';
import 'package:app_plaga_enfermedades/src/pages/plaga/testplaga_form.dart';
import 'package:app_plaga_enfermedades/src/pages/plaga/testplaga_page.dart';
import 'package:app_plaga_enfermedades/src/pages/estaciones/planta_form.dart';
import 'package:app_plaga_enfermedades/src/pages/estaciones/planta_page.dart';
import 'package:flutter/material.dart';
 
import 'package:app_plaga_enfermedades/src/pages/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {

        
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
                const Locale('es', 'ES'),
                // const Locale('en', 'US'),
            ],
            title: 'Material App',
            initialRoute:'home',
            routes: {
                'home' : ( BuildContext context ) => HomePage(),
                //Finca
                'fincas' : ( BuildContext context ) => FincasPage(),
                'addFinca' : ( BuildContext context ) => AgregarFinca(),
                //Parcelas
                'parcelas' : ( BuildContext context ) => ParcelaPage(),
                'addParcela' : ( BuildContext context ) => AgregarParcela(),
                //test
                'tests' :  ( BuildContext context ) => TestPage(),
                'addTest' : ( BuildContext context ) => AgregarTest(),
                //estaciones
                'estaciones' : ( BuildContext context ) => EstacionesPage(),
                'plantas' : ( BuildContext context ) => PlantaPage(),
                'addPlanta' : ( BuildContext context ) => AgregarPlanta(),
                //Decisiones
                'decisiones' : ( BuildContext context ) => DesicionesPage(),
                'registros' : ( BuildContext context ) => DesicionesList(),
                'reporte' : ( BuildContext context ) => ReportePage(),
                

            },
            theme: ThemeData(
                textTheme: GoogleFonts.latoTextTheme(
                    Theme.of(context).textTheme,
                ),
                primaryColor: Colors.deepPurple,
            ),
            
        );
    }
}