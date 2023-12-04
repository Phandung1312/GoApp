// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginInfoModelImpl _$$LoginInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginInfoModelImpl(
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$LoginInfoModelImplToJson(
        _$LoginInfoModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      status: _$JsonConverterFromJson<String, AccountStatus>(
          json['status'], const AccountStatusConverter().fromJson),
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'status': _$JsonConverterToJson<String, AccountStatus>(
          instance.status, const AccountStatusConverter().toJson),
      'role': instance.role,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
