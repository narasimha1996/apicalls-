import 'dart:convert';
import 'package:flutter_application_1/Utilities/Constant.dart';
import 'package:flutter_application_1/datamodels/rawmaterialsDatamodel.dart';
import 'package:http/http.dart' as http;

RawMaterialDataModel rawmaterialsmain = RawMaterialDataModel();

class Getcalls {
 http.Response _response;

  Future<RawMaterialDataModel> getmaterials() async {
    _response = 
    await http.get(Constants.getRawMaterialListUrl,
        headers: ({
          "Content-type": "application/json; charset=utf-8",
        }));

    print(_response.body);
    rawmaterialsmain =
        RawMaterialDataModel.fromJson(json.decode(_response.body));
    return RawMaterialDataModel.fromJson(json.decode(_response.body));
  }
}
