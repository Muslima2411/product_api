import 'models/model.dart';
import 'network/service.dart';

Future<void> main(List<String> arguments) async {
  print("3rd task it took so long i did it like two hours aaaaaaaaaaaaaaagh");

  String response = await NetworkService.getData(NetworkService.apiUser);
  // print(productListFromData(response));
  productListFromData(response).forEach((element) {
    print(element.details.specs.screen.type);
  });
}
