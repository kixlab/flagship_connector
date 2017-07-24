import '../kixflagship.dart';
import '../outer_api/ki_api.dart';

class ChatRoomController extends HTTPController {
  @httpPost
  Future<Response> registerChatSession(
    @HTTPQuery("email") String email,
    @HTTPQuery("sessionID") String sessionID,
    @HTTPQuery("mentalModel") String mentalQuery
  ) async {
    bool mentalModel = mentalQuery == "true";
    new KIApi().sendChatMessage(sessionID, "안녕하세요?");
    return new Response.ok({
      "email": email,
      "sessionID": sessionID,
      "mentalModel": mentalModel
    });
  }
}