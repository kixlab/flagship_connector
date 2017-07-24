import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class KIApi {
  static String baseURL = "http://localhost:8080";

  Future<Null> sendChatMessage(String sessionID, String message) async{
    var payload  = {
        "room": sessionID,
        "message": message
    };

    var response = await http.post(
      baseURL + "/chat",
      body: JSON.encode(payload)
    );
    return response.statusCode == 200;
  }
}