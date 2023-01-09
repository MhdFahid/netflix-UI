import 'package:netflix/core/constant.dart';
import 'package:netflix/core/string.dart';
import 'package:http/http.dart' as http;

class BaseClient {
  var client = http.Client();
  Future<dynamic> get(String api) async {
    var url = Uri.parse(kBaseUrl + api);
    var _headers = {
      'Authorization': 'Bear shffugki]i]kjkbb=',
      'api_key': apiKey,
    };
    var response = await client.get(url, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      // throw exxx
    }
  }
}
