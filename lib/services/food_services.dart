part of 'services.dart';

class FoodServices {
  static Future<ApiReturnValue<List<Food>>> getFoods(
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURlapi + 'food';
    Uri uri = Uri.parse(url);

    var response = await client.get(uri);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please Reload App");
    }

    var data = jsonDecode(response.body);

    List<Food> foods = (data['data']['data'] as Iterable)
        .map((e) => Food.fromJson(e))
        .toList();

    return ApiReturnValue(value: foods);
  }
}
