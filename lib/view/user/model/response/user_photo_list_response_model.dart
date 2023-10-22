import 'package:json_annotation/json_annotation.dart';
part 'user_photo_list_response_model.g.dart';

@JsonSerializable()
class UserPhotoListResponseModel {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'author')
  String? author;
  @JsonKey(name: 'width')
  int? width;
  @JsonKey(name: 'height')
  int? height;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'download_url')
  String? downloadUrl;

  UserPhotoListResponseModel({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
  });

  factory UserPhotoListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserPhotoListResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserPhotoListResponseModelToJson(this);
}
