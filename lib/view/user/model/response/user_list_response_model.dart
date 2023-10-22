import 'package:json_annotation/json_annotation.dart';
part 'user_list_response_model.g.dart';

@JsonSerializable()
class UserListResponseModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'address')
  Address? address;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'website')
  String? website;
  @JsonKey(name: 'company')
  Company? company;

  UserListResponseModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  factory UserListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserListResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserListResponseModelToJson(this);
}

@JsonSerializable()
class Address {
  @JsonKey(name: 'street')
  String? street;
  @JsonKey(name: 'suite')
  String? suite;
  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'zipcode')
  String? zipcode;
  @JsonKey(name: 'geo')
  Geo? geo;

  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Geo {
  @JsonKey(name: 'lat')
  String? lat;
  @JsonKey(name: 'lng')
  String? lng;

  Geo({
    this.lat,
    this.lng,
  });

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  Map<String, dynamic> toJson() => _$GeoToJson(this);
}

@JsonSerializable()
class Company {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'catchPhrase')
  String? catchPhrase;
  @JsonKey(name: 'bs')
  String? bs;

  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
