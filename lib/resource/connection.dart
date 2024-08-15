import 'dart:convert';

import 'package:http/http.dart' as http;

class Connect {
  getRequest(String uri) async {
    var url = Uri.parse(uri);

    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);

        return responseBody;
      } else {
        print("statusCode:${response.statusCode}");
      }
    } catch (e) {
      print("${e}");
    }
  }

  postRequest(String uri, Map data) async {
    var url = Uri.parse(uri);

    try {
      var response = await http.post(url, body: data);
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);

        return responseBody;
      } else {
        print("statusCode:${response.statusCode}");
      }
    } catch (e) {
      print("${e}");
    }
  }

  deleteRequest(String uri, Map data) async {
    var url = Uri.parse(uri);

    try {
      var response = await http.delete(url, body: data);
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);

        return responseBody;
      } else {
        print("statusCode:${response.statusCode}");
      }
    } catch (e) {
      print("${e}");
    }
  }

  putRequest(String uri, Map data) async {
    var url = Uri.parse(uri);

    try {
      var response = await http.put(url, body: data);
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);

        return responseBody;
      } else {
        print("statusCode:${response.statusCode}");
      }
    } catch (e) {
      print("${e}");
    }
  }
}
