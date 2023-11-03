import 'package:dart_hybrid4/dart_hybrid4.dart' as fetch;


void main() {
  Uri url = Uri.parse('https://random-data-api.com/api/v2/users?size=10');

  fetch.userFetch(url);
}