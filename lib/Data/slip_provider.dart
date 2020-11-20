import 'dart:convert';

import 'package:advice_api/Data/slip_model.dart';
import 'package:advice_api/Data/slipsuper_model.dart';
import 'package:http/http.dart' as http;

class RestClient {
  Future<String> fetchData() async {
    final response = await http.get("https://api.adviceslip.com/advice");
    print('response=' + response.body.toString());
    var jk = jsonDecode(response.body);
    print("jkr=");
    print(jk['slip'].runtimeType);
    Map<String, dynamic> jkr = jk['slip'];
    var jkrosh = jkr['advice'];
    print("jkrosh=" + jkrosh);
    return jkrosh;
  }

  String resp() {
    final jk = fetchData();
    print('jk=' + jk.toString());
    return jk.toString();
  }
}
