import 'package:flutter/material.dart';

// ─── Shared Colorss ─────────────────────────────────────────────────────────────
const kRed    = Color(0xFFC42D27);
const kBgPage = Color(0xFFF5EDED);

// ─── Models ────────────────────────────────────────────────────────────────────
class FareModel {
  final String cls, code;
  final double price;
  final bool sel;
  const FareModel(this.cls, this.code, this.price, {this.sel = false});
}

class FlightModel {
  final String no, dep, depAp, arr, arrAp, dur;
  final List<FareModel> fares;
  FlightModel(this.no, this.dep, this.depAp, this.arr, this.arrAp, this.dur,
      this.fares);
}
