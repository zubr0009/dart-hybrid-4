import 'package:http/http.dart' as http;
import 'dart:convert';

void userFetch(URL) async {
  List<dynamic> people = [];
  try {
    var resp = await http.get(URL);
    people = json.decode(resp.body);
    for (dynamic person in people) {
      print("${person['first_name']} ${person['last_name']}'s UID is ${person['uid']}");
    }
  } catch (error) {
    print("Failed to load fetched data: $error");
  }
}
