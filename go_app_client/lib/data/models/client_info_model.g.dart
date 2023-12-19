// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientInfoModelImpl _$$ClientInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientInfoModelImpl(
      id: json['id'] as int,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as num?,
      avatarUrl: json['avatarUrl'] as String?,
      gender: json['gender'] as bool?,
      nonBlock: json['nonBlock'] as bool?,
    );

Map<String, dynamic> _$$ClientInfoModelImplToJson(
        _$ClientInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'avatarUrl': instance.avatarUrl,
      'gender': instance.gender,
      'nonBlock': instance.nonBlock,
    };
