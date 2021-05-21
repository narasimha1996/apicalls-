import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/Servicecalls/postcalls.dart';
import 'package:flutter_application_1/Utilities/classimports.dart';

// ignore: unused_import
// import 'package:flutter_application_1/Servicecalls/getcalls.dart';
import 'package:flutter_application_1/datamodels/rawmaterialsDatamodel.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String url = "http://devapi.mitresource.in/v1/rawMaterialList";
  bool isloading = true;
  RawMaterialDataModel getMatrialListdata = RawMaterialDataModel();
  var  intCustomerSiteIdController = TextEditingController();
  var intCustomerIdController = TextEditingController();
  var strDescriptionController = TextEditingController();
  var strSiteVisitTypeIdController = TextEditingController();
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    this.getJsonData();
  }

  // ignore: missing_return
  Future<Null> getJsonData() async {
    RawMaterialDataModel getMatrialListmain =
        await getcalls.getmaterials();
    setState(() {
      isloading = false;
      getMatrialListdata = getMatrialListmain;
    });
  }

  @override
  // ignore: unused_element
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("get"),
        ),
        body: ListView.builder(
            itemCount:
                getMatrialListdata == null ? 0 : getMatrialListdata.listmaterialdata.length,
            // ignore: missing_return
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(getMatrialListdata.listmaterialdata[index].strRawMaterial),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
