class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductsModel> _products;
  List<ProductsModel> get products=>_products;

  Product({required totalSize, required typeId, required offset, required products}){
    this._totalSize=totalSize;
    this._typeId=typeId;
    this._offset=offset;
    this._products=products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _products = <ProductsModel>[];
      json['products'].forEach((v) {
        _products.add(ProductsModel.fromJson(v));
      });
    }
  }
}

class ProductsModel {
  int? id;
  String? name;
  String? description;
  int? price;
  double? stars;
  String? img;
  String? location;
  int? typeId;

  ProductsModel(
      {this.id,
        this.name,
        this.description,
        this.price,
        this.stars,
        this.img,
        this.location,
        this.typeId});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stars = json['stars'];
    img = json['img'];
    location = json['location'];
    typeId = json['type_id'];
  }
}