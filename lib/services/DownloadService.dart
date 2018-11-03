import 'package:http/http.dart' as http;

class WIWRestService {

  static Future<String> get(String uri) async{
    final response =  await http.get(uri);
    return response.body;
  }
}