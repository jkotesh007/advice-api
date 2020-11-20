class SlipSuperModel {
  final String slipdata;
  SlipSuperModel.fromJson(json) : slipdata = json['slip'];
}

class SlipModel {
  final String id;
  final String advice;
  SlipModel.fromJson(Map json)
      : id = json['id'],
        advice = json['advice'];
}
