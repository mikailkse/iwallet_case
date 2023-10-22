// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_photo_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPhotoListResponseModel _$UserPhotoListResponseModelFromJson(
        Map<String, dynamic> json) =>
    UserPhotoListResponseModel(
      id: json['id'] as String?,
      author: json['author'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      url: json['url'] as String?,
      downloadUrl: json['download_url'] as String?,
    );

Map<String, dynamic> _$UserPhotoListResponseModelToJson(
        UserPhotoListResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'download_url': instance.downloadUrl,
    };
