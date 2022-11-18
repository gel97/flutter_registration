import 'dart:async';
import 'dart:math';

class TestBloc {
  List<String> kahoys = ["Nara", "Lawaan", "Mansanitas"];
  List<String> lubis = ["Lubi nga lahing", "Lubi nga bungol", "Lubi nga putot"];

  StreamController<String> kahoysCtrlr = StreamController<String>();
  Sink<String> get sinkKahoys => kahoysCtrlr.sink;
  Stream<String> get streamKahoys => kahoysCtrlr.stream;

  StreamController<String> lubisCtrlr = StreamController<String>();
  Sink<String> get sinkLubis => lubisCtrlr.sink;
  Stream<String> get streamLubis => lubisCtrlr.stream;
  void setKahoy() {
    var strKahoy = kahoys[Random().nextInt(kahoys.length)];
    sinkKahoys.add(strKahoy);
  }

  void setLubi() {
    var strLubi = lubis[Random().nextInt(lubis.length)];
    sinkLubis.add(strLubi);
  }
}
