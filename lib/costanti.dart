import 'package:flutter/material.dart';

const color1 = Color(0xffb8150c);
const color2 = Color(0xff7f0d36);
const top1 = Image(
  image: AssetImage('images/logo_scacchi.png'),
  height: 150,
);
int indexliste_1;

const BNBI = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.people_alt),
    label: 'Merch',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'Categorie',
  ),
];

//DA MODIFICARE CON L'API
List<String> titoli = [
  "Iscrizioni 2021-22 – Open days al Liceo Scacchi il 18 Dicembre 2020, il 15 e 22 Gennaio 2021"
      "Pubblicazione graduatorie definitive esperti madrelingua per sezioni Cambridge IGCSE",
  "Assenze di massa",
  "Ubicazione classi ed elenco classi con attività didattiche solo parzialmente in presenza",
  'Avviso per gli iscritti alle classi prime 2020-21',
  'Olimpiadi di Robotica 2020: 1° premio allo Scacchi per la categoria Terra',
  'DATE DI PUBBLICAZIONE DEGLI ESITI FINALI DEGLI ESAMI DI STATO',
  'Pubblicazione dei calendari dei colloqui delle Commissioni di Esame di Stato',
  'Didattica ai tempi del coronavirus – Storia e letteratura inglese',
  'Cerimonia di consegna dei fondi #ScacchiBatteCovid'
];
List<String> contenuti = [
  "In vista delle iscrizioni alle prime classi per l’anno scolastico 2021-22, il Liceo Scacchi organizza tre giornate di Open days online per il 18 Dicembre 2020, il 15 e il 22 Gennaio 2021, dalle ore 16,30 alle ore 19,00, nel corso delle quali il Dirigente scolastico e i docenti presenteranno l’offerta formativa, le attività didattiche e gli ambienti della scuola. riporta di seguito il link per la partecipazione agli Open Days.https://sites.google.com/liceoscacchibari.it/orienta-scacchi-20-21/"
      "Pubblicazione graduatorie definitive esperti madrelingua per sezioni Cambridge IGCSE",
  "Si comunica a tutti gli studenti che l’Istituto non autorizza né giustifica assenze di massa. L’eventuale decisione di assentarsi per partecipare a manifestazioni e/o scioperi si configura come scelta personale con relativa assunzione di responsabilità per la decisione presa. Pertanto, tale tipo di assenza è soggetta a sanzione.",
  'Si pubblicano in allegato l’ubicazione di tutte le classi del Liceo (Allegato 1) e l’elenco delle tredici classi che, fino al 7 novembre, svolgeranno le attività didattiche solo parzialmente in presenza (Allegato 2). Nella relativa tabella, in corrispondenza di ogni classe, è indicato il numero di alunni che, secondo una turnazione settimanale, seguiranno le lezioni a distanza. Il primo turno andrà da giovedì 24 a sabato 26 settembre, mentre nelle settimane successive ogni turno andrà dal lunedì al sabato.A partire dal 9 novembre, invece, le classi indicate nella tabella proseguiranno le attività didattiche totalmente in presenza, fino al 22 dicembre.Per l’individuazione degli alunni che nella fase iniziale dovranno partecipare a distanza alle lezioni, si seguirà l’ordine alfabetico dell’elenco di classe. Gli interessati, comunque, riceveranno una comunicazione personale tramite email, nella quale saranno fornite le istruzioni operative per effettuare il collegamento a distanza tramite l’applicazione “Meet” di Google.https://liceoscacchibari.edu.it/wp-content/uploads/2020/09/Allegato-2.-Classi-parzialmente-in-presenza-settembre-novembre-2020.pdf',
  'Avviso per gli iscritti alle classi prime 2020-21',
  'Olimpiadi di Robotica 2020: 1° premio allo Scacchi per la categoria Terra',
  'DATE DI PUBBLICAZIONE DEGLI ESITI FINALI DEGLI ESAMI DI STATO',
  'Pubblicazione dei calendari dei colloqui delle Commissioni di Esame di Stato',
  'Didattica ai tempi del coronavirus – Storia e letteratura inglese',
  'Cerimonia di consegna dei fondi #ScacchiBatteCovid'
];

// DA RIVEDERE IN FASE DI COSTRUZIONE DELL'API
List<String> categorie = [
  'BORSE DI STUDIO,CONCORSI E GARE',
  'BACHECA STUDENTI',
  'BACHECA GENITORI',
  'ESAMI DI STATO'
];

bool categoria0;
bool categoria1;
bool categoria2;
bool categoria3;

// DA RIVEDERE IN FASE DI COSTITUZIONE DEL MERCH
List<String> prodotti = [
  'adesivi',
  't-shirt',
];
