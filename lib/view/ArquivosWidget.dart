import 'package:flutter/material.dart';
import '../model/ArquivoDeletavelModel.dart';
import './ArquivoWidget.dart';
import '../controller/SnackbarController.dart';
import 'dart:async';

class ArquivosWidget extends StatelessWidget {
  List<ArquivoDeletavel> arquivos;
  StreamController<ArquivoDeletavel> chan;
  ArquivosWidget(this.arquivos, this.chan);
  Widget build(BuildContext ctx) {
    return ListView(
        children: this
            .arquivos
            .map((a) => ArquivoWidget(a, chan)) // map
            .toList() // toList
        );
  }
}
