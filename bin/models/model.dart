import 'dart:convert';

class Product{
  late String productId;
  late String productName;
  late double price;
  late bool inStock;
  late Availability availability;
  late Details details;

  Product.fromJson(Map<String, dynamic> json){
    productId = json["productId"];
    productName = json["productName"];
    inStock = json["inStock"];
    availability = Availability.fromJson(json["availability"]);
    details = Details.fromJson(json["details"]);
  }
  Map<String, dynamic> toJson(){
    return{
      "productId":productId,
      "productName":productName,
      "price":price,
      "availability":availability,
      "details":details
    };
  }

}

class Availability{
  late bool online;
  late Offline offline;

  Availability.fromJson(Map<String, dynamic> json) {
    online = json["online"];
    offline = Offline.fromJson(json["offline"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "online": online,
      "offline": offline,
    };
    return map;
  }
}

class Details{
  late String brand;
  late String model;
  late Specs specs;

  Details.fromJson(Map<String, dynamic> json){
    brand = json["brand"];
    model = json["model"];
    specs = Specs.fromJson(json["specs"]);
  }
  Map<String, dynamic> toJson(){
    return{
      "brand":brand,
      "model":model,
      "specs":specs
    };
  }
}

class Offline{
  late int store1;
  late int store2;
  late int store3;
  Offline.fromJson(Map<String, dynamic> json){
    store1 = json["store1"];
    store2 = json["store2"];
    store3 = json["store3"];
  }
  Map<String, dynamic> toJson(){
    return{
      "store1":store1,
      "store2":store2,
      "store3":store3
    };
  }
}
// @Diyorakhon_07

class Specs{
  late Screen screen;
  late Storage storage;
  late Ram ram;
  late Battery battery;
  late OperatingSystem operatingSystem;
  late Connectivity connectivity;
  late Warranty warranty;
  Camera? camera;
  Graphics? graphics;

  Specs.fromJson(Map<String,dynamic> json){
    screen = Screen.fromJson(json["screen"]);
    storage = Storage.fromJson(json["storage"]);
    ram = Ram.fromJson(json["ram"]);
    battery = Battery.fromJson(json["battery"]);
    operatingSystem = OperatingSystem.fromJson(json["operatingSystem"]);
    connectivity = Connectivity.fromJson(json["connectivity"]);
    warranty = Warranty.fromJson(json["warranty"]);
    camera = json["camera"] != null ? Camera.fromJson(json["camera"]) : null;
    graphics = json["graphics"] != null ? Graphics.fromJson(json["graphics"]) : null;
  }

  Map<String, dynamic> toJson(){
    return{
      "screen":screen,
      "storage":storage,
      "ram":ram,
      "battery":battery,
      "operatingSystem":operatingSystem,
      "connectivity":connectivity,
      "warranty":warranty,
      "camera":camera,
      "graphics":graphics,
    };
  }

}

class Screen{
  late String type;
  late double size;
  late String resolution;
  Screen.fromJson(Map<String, dynamic> json){
    type = json["type"];
    size = json["size"];
    resolution = json["resolution"];
  }
  Map<String, dynamic> toJson(){
    return{
      "type":type,
      "size":size,
      "resolution":resolution
    };
  }

}

class Storage{
  late String type;
  late String capacity;
  Storage.fromJson(Map<String, dynamic> json){
    type = json["type"];
    capacity = json["capacity"];
  }
  Map<String, dynamic> toJson(){
    return{
      "type":type,
      "capacity":capacity
    };
  }
}

class Ram{
  late String type;
  late String capacity;
  late String speed;
  Ram.fromJson(Map<String, dynamic> json){
    type = json["type"];
    capacity = json["capacity"];
    speed = json["speed"];
  }
  Map<String, dynamic> toJson(){
    return{
      "type":type,
      "capacity":capacity,
      "speed":speed
    };
  }
}

class Camera{
  Rear? rear;
  Front? front;

  Camera.fromJson(Map<String, dynamic> json){
    rear = Rear.fromJson(json["rear"]);
    front = Front.fromJson(json["front"]);
  }
  Map<String, dynamic> toJson(){
    return{
      "rear":rear,
      "front":front,
    };
  }

}

class Rear{
  String? resolution;
  String? aperture;
  Rear.fromJson(Map<String, dynamic> json){
    resolution = json["resolution"];
    aperture = json["aperture"];
  }
  Map<String, dynamic> toJson(){
    return{
      "resolution":resolution,
      "aperture":aperture,
    };
  }
}

class Front {
  String? resolution;
  String? aperture;
  Front.fromJson(Map<String, dynamic> json){
    resolution = json["resolution"];
    aperture = json["aperture"];
  }
  Map<String, dynamic> toJson(){
    return{
      "resolution":resolution,
      "aperture":aperture,
    };
  }
}

class Battery{
  late String type;
  late String capacity;
  late Charging charging;

  Battery.fromJson(Map<String, dynamic> json){
    type = json["type"];
    capacity = json["capacity"];
    charging = Charging.fromJson(json["charging"]);
  }
  Map<String, dynamic> toJson(){
    return{
      "type":type,
      "capacity":capacity,
      "charging":charging
    };
  }
}

class Charging{
  late String type;
  late int wattage;

  Charging.fromJson(Map<String, dynamic> json){
    type = json["type"];
    wattage = json["wattage"];
  }
  Map<String, dynamic> toJson(){
    return{
      "type":type,
      "wattage":wattage
    };
  }

}

class OperatingSystem{
  late String name;
  late String version;
  String? customSkin;

  OperatingSystem.fromJson(Map<String, dynamic> json){
    name = json["name"];
    version = json["version"];
    customSkin = json["customSkin"];
  }
  Map<String, dynamic> toJson(){
    return{
      "name":name,
      "version":version,
      "customSkin":customSkin
    };
  }

}

class Connectivity{
  late String wifi;
  late String bluetooth;
  bool? nfc;

  Connectivity.fromJson(Map<String, dynamic> json){
    wifi= json["wifi"];
    bluetooth = json["bluetooth"];
    nfc = json["nfc"];
  }
  Map<String, dynamic> toJson(){
    return{
      "wifi": wifi,
      "bluetooth":bluetooth,
      "nfc":nfc
    };
  }
}

class Warranty{
  late int months;
  late String type;

  Warranty.fromJson(Map<String, dynamic> json){
    months = json["months"];
    type = json["type"];
  }
  Map<String, dynamic> toJson(){
    return{
      "months":months,
      "type":type,
    };
  }
}

class Graphics{
  String? type;
  Graphics.fromJson(Map<String, dynamic> json){
    type = json["type"];
  }
  Map<String, dynamic> toJson() => {"type":type};
}

List<Product> productListFromData(String data) => List<Product>.from(jsonDecode(data).map((e) => Product.fromJson(e)));

String productToData(Product product) => jsonEncode(product.toJson());
