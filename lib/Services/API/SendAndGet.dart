import 'package:http/http.dart' as http;

void postData(url, data) async {
  var urlPOSTING = Uri.parse(url.toString());
  var response = await http.post(urlPOSTING, body: data);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  print(await http.read(Uri.parse('https://example.com/foobar.txt')));
}

void getData(String url) async {
  var urlGETTING = Uri.parse(url);
  var response = await http.get(urlGETTING, headers: {
    "Accept": "application/json",
    "Access-Control_Allow_Origin": "*"
  });
  print(response.body);
}
