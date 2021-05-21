// import 'dart:convert';

// import 'package:flutter_application_1/Utilities/Constant.dart';
// // ignore: unused_import
// import 'package:flutter_application_1/Utilities/SaveInPreference.dart';
// import 'package:flutter_application_1/Utilities/classimports.dart';
// // ignore: unused_import
// import 'package:http/http.dart' as http;

// class CustomerHistory {
//   // ignore: unused_field
//   http.Response _response;

//   // ignore: missing_return
//   Future<http.Response> postCustomerHistory(
//       {intCustomerSiteId,
//       intCustomerId,
//       String strDescription,
//       String strSiteVisitTypeId}) async {
//     // ignore: unused_local_variable
//     var strUserId = await saveInPreference.getString('4');
//     // ignore: unused_local_variable
//     var postBody = {
//       "customerSiteId": intCustomerSiteId,
//       "customerId": intCustomerId,
//       "description": strDescription,
//       "UserId": strUserId,
//       "SiteVisitTypeId": strSiteVisitTypeId,
//     };

//     _response = await http.post(Constants.createCustomer,
//         headers: ({
//           "Content-Type": "Application/json,charset=utf8",
//         }),
//         body:jsonEncode(postBody));
//     print(_response.body);
//     return _response;
//   }
// }
