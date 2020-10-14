import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'welcome.dart';

const color1 = Color(0xffb8150c);
const color2 = Color(0xff7f0d36);
const top1 = Image(
  image: AssetImage('images/logo_scacchi.png'),
  height: 150,
);
List<String> titoli = [
  "Ubicazione classi ed elenco classi con attività didattiche solo parzialmente in presenza",
  'Avviso per gli iscritti alle classi prime 2020-21',
  'Olimpiadi di Robotica 2020: 1° premio allo Scacchi per la categoria Terra',
  'DATE DI PUBBLICAZIONE DEGLI ESITI FINALI DEGLI ESAMI DI STATO',
  'Pubblicazione dei calendari dei colloqui delle Commissioni di Esame di Stato',
  'Didattica ai tempi del coronavirus – Storia e letteratura inglese',
  'Cerimonia di consegna dei fondi #ScacchiBatteCovid'
];
List<String> contenuti = [
  'Si pubblicano in allegato l’ubicazione di tutte le classi del Liceo (Allegato 1) e l’elenco delle tredici classi che, fino al 7 novembre, svolgeranno le attività didattiche solo parzialmente in presenza (Allegato 2). Nella relativa tabella, in corrispondenza di ogni classe, è indicato il numero di alunni che, secondo una turnazione settimanale, seguiranno le lezioni a distanza. Il primo turno andrà da giovedì 24 a sabato 26 settembre, mentre nelle settimane successive ogni turno andrà dal lunedì al sabato.A partire dal 9 novembre, invece, le classi indicate nella tabella proseguiranno le attività didattiche totalmente in presenza, fino al 22 dicembre.Per l’individuazione degli alunni che nella fase iniziale dovranno partecipare a distanza alle lezioni, si seguirà l’ordine alfabetico dell’elenco di classe. Gli interessati, comunque, riceveranno una comunicazione personale tramite email, nella quale saranno fornite le istruzioni operative per effettuare il collegamento a distanza tramite l’applicazione “Meet” di Google.https://liceoscacchibari.edu.it/wp-content/uploads/2020/09/Allegato-2.-Classi-parzialmente-in-presenza-settembre-novembre-2020.pdf',
  'Avviso per gli iscritti alle classi prime 2020-21',
  'Olimpiadi di Robotica 2020: 1° premio allo Scacchi per la categoria Terra',
  'DATE DI PUBBLICAZIONE DEGLI ESITI FINALI DEGLI ESAMI DI STATO',
  'Pubblicazione dei calendari dei colloqui delle Commissioni di Esame di Stato',
  'Didattica ai tempi del coronavirus – Storia e letteratura inglese',
  'Cerimonia di consegna dei fondi #ScacchiBatteCovid'
];

List<bool> categorieval = [true, true, true, true];
//categorieval =preferenze.json[categoriejson];
List<String> categorie = [
  'BORSE DI STUDIO,CONCORSI E GARE',
  'BACHECA STUDENTI',
  'BACHECA GENITORI',
  'ESAMI DI STATO'
];

List<String> prodotti = [
  't-shirt',
];

int indexliste_1;

//TODO: CREA UN METODO CHE CREA LA LISTA DA VISUALIZZARE NELLA HOME TENEDO CONTO DELLE PREFERENZE ESPRESSE
//TODO: CAMBIA ICONE (VEDI IN DOWNLOAD)

//stai attento in quale setstate metti _change()

Future<void> _resetCounter() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('startupNumber', true);
}

String nome_utente = '';
