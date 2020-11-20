import 'package:advice_api/Data/slip_provider.dart';
import 'dart:io';
import 'package:advice_api/Data/slipsuper_model.dart';

String getValue() {
  String text = '1';
  RestClient rc = RestClient();
  rc.fetchData().then((str) {
    text = str;
    print("st=" + str);
    print("in=" + DateTime.now().toString());
    return text;
  });

  print("text=" + text);
  print("out=" + DateTime.now().toString());
}
