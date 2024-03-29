import 'package:djr_delivery_boy/data/model/response/product_model.dart';

class OrderDetailsModel {
  int _id;
  int _productId;
  int _orderId;
  double _price;
  ProductDetails _productDetails;
  List<Variation> _variation;
  double _discountOnProduct;
  String _discountType;
  int _quantity;
  double _taxAmount;
  String _createdAt;
  String _updatedAt;
  String _variant;
  bool _isVatInclude;


  OrderDetailsModel(
      {int id,
        int productId,
        int orderId,
        double price,
        ProductDetails productDetails,
        List<Variation> variation,
        double discountOnProduct,
        String discountType,
        int quantity,
        double taxAmount,
        String createdAt,
        String updatedAt,
        String variant,
        bool isVatInclude,

      }) {
    this._id = id;
    this._productId = productId;
    this._orderId = orderId;
    this._price = price;
    this._productDetails = productDetails;
    this._variation = variation;
    this._discountOnProduct = discountOnProduct;
    this._discountType = discountType;
    this._quantity = quantity;
    this._taxAmount = taxAmount;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._variant = variant;
    this._isVatInclude = isVatInclude;
  }

  int get id => _id;
  int get productId => _productId;
  int get orderId => _orderId;
  double get price => _price;
  ProductDetails get productDetails => _productDetails;
  List<Variation> get variation => _variation;
  double get discountOnProduct => _discountOnProduct;
  String get discountType => _discountType;
  int get quantity => _quantity;
  double get taxAmount => _taxAmount;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  String get variant => _variant;
  bool get isVatInclude => _isVatInclude;

  OrderDetailsModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _productId = json['product_id'];
    _orderId = json['order_id'];
    _price = json['price'].toDouble();
    _productDetails = json['product_details'] != null
        ? new ProductDetails.fromJson(json['product_details'])
        : null;
    if (json['variation'] != null) {
      _variation = [];
      json['variation'].forEach((v) {
        _variation.add(new Variation.fromJson(v));
      });
    }
    _discountOnProduct = json['discount_on_product'].toDouble();
    _discountType = json['discount_type'];
    _quantity = json['quantity'];
    _taxAmount = json['tax_amount'].toDouble();
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _variant = json['variant'];
    _isVatInclude = '${json['vat_status']}' == 'included';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['product_id'] = this._productId;
    data['order_id'] = this._orderId;
    data['price'] = this._price;
    if (this._productDetails != null) {
      data['product_details'] = this._productDetails.toJson();
    }
    if (this._variation != null) {
      data['variation'] = this._variation.map((v) => v.toJson()).toList();
    }
    data['discount_on_product'] = this._discountOnProduct;
    data['discount_type'] = this._discountType;
    data['quantity'] = this._quantity;
    data['tax_amount'] = this._taxAmount;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['variant'] = this._variant;
    data['included'] = this._isVatInclude;
    return data;
  }
}

class ProductDetails {
  int _id;
  String _name;
  String _description;
  List<String> _image;
  double _price;
  List<Variations> _variations;
  double _tax;
  String _availableTimeStarts;
  String _availableTimeEnds;
  int _status;
  String _createdAt;
  String _updatedAt;
  List<String> _attributes;
  List<CategoryIds> _categoryIds;
  List<ChoiceOptions> _choiceOptions;
  double _discount;
  String _discountType;
  String _taxType;

  ProductDetails(
      {int id,
        String name,
        String description,
        List<String> image,
        double price,
        List<Variations> variations,
        double tax,
        String availableTimeStarts,
        String availableTimeEnds,
        int status,
        String createdAt,
        String updatedAt,
        List<String> attributes,
        List<CategoryIds> categoryIds,
        List<ChoiceOptions> choiceOptions,
        double discount,
        String discountType,
        String taxType}) {
    this._id = id;
    this._name = name;
    this._description = description;
    this._image = image;
    this._price = price;
    this._variations = variations;
    this._tax = tax;
    this._availableTimeStarts = availableTimeStarts;
    this._availableTimeEnds = availableTimeEnds;
    this._status = status;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._attributes = attributes;
    this._categoryIds = categoryIds;
    this._choiceOptions = choiceOptions;
    this._discount = discount;
    this._discountType = discountType;
    this._taxType = taxType;
  }

  int get id => _id;
  String get name => _name;
  String get description => _description;
  List<String> get image => _image;
  double get price => _price;
  List<Variations> get variations => _variations;
  double get tax => _tax;
  String get availableTimeStarts => _availableTimeStarts;
  String get availableTimeEnds => _availableTimeEnds;
  int get status => _status;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  List<String> get attributes => _attributes;
  List<CategoryIds> get categoryIds => _categoryIds;
  List<ChoiceOptions> get choiceOptions => _choiceOptions;
  double get discount => _discount;
  String get discountType => _discountType;
  String get taxType => _taxType;

  ProductDetails.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _image = json['image'].cast<String>();
    _price = json['price'].toDouble();
    if (json['variations'] != null) {
      _variations = [];
      json['variations'].forEach((v) {
        _variations.add(new Variations.fromJson(v));
      });
    }
    _tax = json['tax'].toDouble();
    _availableTimeStarts = json['available_time_starts'];
    _availableTimeEnds = json['available_time_ends'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _attributes = json['attributes'].cast<String>();
    if (json['category_ids'] != null) {
      _categoryIds = [];
      json['category_ids'].forEach((v) {
        _categoryIds.add(new CategoryIds.fromJson(v));
      });
    }
    if (json['choice_options'] != null) {
      _choiceOptions = [];
      json['choice_options'].forEach((v) {
        _choiceOptions.add(new ChoiceOptions.fromJson(v));
      });
    }
    _discount = json['discount'].toDouble();
    _discountType = json['discount_type'];
    _taxType = json['tax_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['description'] = this._description;
    data['image'] = this._image;
    data['price'] = this._price;
    if (this._variations != null) {
      data['variations'] = this._variations.map((v) => v.toJson()).toList();
    }
    data['tax'] = this._tax;
    data['available_time_starts'] = this._availableTimeStarts;
    data['available_time_ends'] = this._availableTimeEnds;
    data['status'] = this._status;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['attributes'] = this._attributes;
    if (this._categoryIds != null) {
      data['category_ids'] = this._categoryIds.map((v) => v.toJson()).toList();
    }
    if (this._choiceOptions != null) {
      data['choice_options'] =
          this._choiceOptions.map((v) => v.toJson()).toList();
    }
    data['discount'] = this._discount;
    data['discount_type'] = this._discountType;
    data['tax_type'] = this._taxType;
    return data;
  }
}

class Variations {
  String _type;
  double _price;

  Variations({String type, double price}) {
    this._type = type;
    this._price = price;
  }

  String get type => _type;
  double get price => _price;

  Variations.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _price = json['price'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    data['price'] = this._price;
    return data;
  }
}

class CategoryIds {
  String _id;
  int _position;

  CategoryIds({String id, int position}) {
    this._id = id;
    this._position = position;
  }

  String get id => _id;
  int get position => _position;

  CategoryIds.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['position'] = this._position;
    return data;
  }
}

class ChoiceOptions {
  String _name;
  String _title;
  List<String> _options;

  ChoiceOptions({String name, String title, List<String> options}) {
    this._name = name;
    this._title = title;
    this._options = options;
  }

  String get name => _name;
  String get title => _title;
  List<String> get options => _options;

  ChoiceOptions.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _title = json['title'];
    _options = json['options'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['title'] = this._title;
    data['options'] = this._options;
    return data;
  }
}
