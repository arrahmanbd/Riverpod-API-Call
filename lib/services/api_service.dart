import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '../models/doc_model.dart';

class ApiServices {

String url = 'https://safihealth.org/api/speciality-wise-doctor';

Future<DocModel> getDoctors() async {
  final response = await http.get(Uri.parse('$url/2'));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return DocModel.fromJson(data);
  } else {
    throw Exception('Failed to load');
  }
}
}

final DocProvider = Provider<ApiServices>((ref) => ApiServices());

