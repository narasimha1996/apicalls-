class RawMaterialDataModel {
  List<RawMaterialListDataModel> listmaterialdata;
  RawMaterialDataModel({
    this.listmaterialdata,
  });
  // ignore: missing_return
  factory RawMaterialDataModel.fromJson(Map<String, dynamic> json) {
    // ignore: unused_local_variable
    var dummylist = json['rawMaterialList'] == null
        ? null
        : json['rawMaterialList'] as List;

    // ignore: unused_local_variable
    List<RawMaterialListDataModel> listactivedatadetails;
    if (dummylist != null) 
      listactivedatadetails =
          dummylist.map((i) => RawMaterialListDataModel.fromJson(i)).toList();
      return RawMaterialDataModel(listmaterialdata: listactivedatadetails);
    
  }
}

class RawMaterialListDataModel {
  int intId;
  String strRawMaterial;
  RawMaterialListDataModel({
    this.intId,
    this.strRawMaterial,
  });
  factory RawMaterialListDataModel.fromJson(Map<String, dynamic> json) {
    // ignore: unused_local_variable
    return RawMaterialListDataModel(
        intId: json['id'] == null ? null : json['id'],
        strRawMaterial:
            json['rawMaterial'] == null ? null : json['rawMaterial']);
  }
}
