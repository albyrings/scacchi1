import "costanti.dart";
import 'package:flutter/material.dart';

class User {
  final nome_utente;
  final categoria0;
  final categoria1;
  final categoria2;
  final categoria3;
  int i = 0;

  User(
      {this.nome_utente,
      this.categoria0,
      this.categoria1,
      this.categoria2,
      this.categoria3});

  List _getPrefes() {
    categorieval1[0] = this.categoria0;
    categorieval1[1] = this.categoria1;
    categorieval1[2] = this.categoria2;
    categorieval1[3] = this.categoria3;
    return categorieval1;
  }

  String _getNome() {
    String nome_utente = this.nome_utente;
    return nome_utente;
  }
}

dynamic alberto = User(
    nome_utente: "alberto",
    categoria0: true,
    categoria1: false,
    categoria2: true,
    categoria3: false);

List c = alberto._getPrefes();
