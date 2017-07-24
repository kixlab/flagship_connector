import 'package:http/http.dart' as http;
import 'dart:async';

class KIApi {
  static String baseURL = "http://localhost:8080";

  Future<Null> sendChatMessage(String sessionID, String message) async{
    var response = await http.post(
      baseURL + "/chat",
      body: {
        "room": sessionID,
        "message": message
      }
    );
    return response.statusCode == 200;
  }
}