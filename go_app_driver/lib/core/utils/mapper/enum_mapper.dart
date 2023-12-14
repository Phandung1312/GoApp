import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_app_driver/domain/entities/enum/account_status.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';

class AccountStatusConverter implements JsonConverter<AccountStatus, String> {
  const AccountStatusConverter();
  @override
  AccountStatus fromJson(String json) {
    switch (json) {
      case 'unregistered':
        return AccountStatus.unregistered;
      case 'registered':
        return AccountStatus.registered;
      case 'blocked':
        return AccountStatus.blocked;
      case 'uncheck':
        return AccountStatus.uncheck;
      default:
        return AccountStatus.unknown;
    }
  }

  @override
  String toJson(AccountStatus object) {
    switch (object) {
      case AccountStatus.unregistered:
        return 'unregistered';
      case AccountStatus.registered:
        return 'registered';
      case AccountStatus.blocked:
        return 'blocked';
      case AccountStatus.uncheck:
        return 'uncheck';
      default:
        return 'unregistered';
    }
  }
}

class BookingStatusConverter implements JsonConverter<BookingStatus, String> {
  const BookingStatusConverter();

  @override
  BookingStatus fromJson(String json) {
    switch (json) {
      case 'WAITING':
        return BookingStatus.waitting;
      case 'PAID':
        return BookingStatus.paid;
      case 'FOUND':
        return BookingStatus.found;
      case 'ON_RIDE':
        return BookingStatus.onRide;
      case 'COMPLETE':
        return BookingStatus.complete;
      case 'CANCELLED':
        return BookingStatus.cancelled;
      case 'WAITING_REFUND':
        return BookingStatus.wattingRefund;
      case 'REFUND':
        return BookingStatus.refunded;
      default:
        return BookingStatus.unknown;
    }
  }

  @override
  String toJson(BookingStatus object) {
    switch (object) {
      case BookingStatus.waitting:
        return 'WAITING';
      case BookingStatus.found:
        return 'FOUND';
      case BookingStatus.onRide:
        return 'ON_RIDE';
      case BookingStatus.complete:
        return 'COMPLETE';
      default:
        return 'UNKNOWN';
    }
  }
}

class VehicleTypeConverter implements JsonConverter<VehicleType, String> {
  const VehicleTypeConverter();

  @override
  VehicleType fromJson(String json) {
    switch (json) {
      case 'MOTORCYCLE':
        return VehicleType.MOTORCYCLE;
      case 'CAR':
        return VehicleType.CAR;
      default:
        return VehicleType.MOTORCYCLE;
    }
  }

  @override
  String toJson(VehicleType object) {
    switch (object) {
      case VehicleType.MOTORCYCLE:
        return 'MOTORCYCLE';
      case VehicleType.CAR:
        return 'CAR';
      default:
        return 'MOTORCYCLE';
    }
  }
}

class DriverStatusConverter implements JsonConverter<DriverStatus, String> {
  const DriverStatusConverter();

  @override
  DriverStatus fromJson(String json) {
    switch (json) {
      case 'FREE':
        return DriverStatus.free;
      case 'OFF':
        return DriverStatus.off;
      case 'ON_RIDE':
        return DriverStatus.onRide;
      case 'NOT_ACTIVE':
        return DriverStatus.notActive;
      default:
        return DriverStatus.unknown;
    }
  }

  @override
  String toJson(DriverStatus object) {
    switch (object) {
      case DriverStatus.free:
        return 'FREE';
      case DriverStatus.off:
        return 'OFF';
      case DriverStatus.onRide:
        return 'ON_RIDE';
      case DriverStatus.notActive:
        return 'NOT_ACTIVE';
      default:
        return 'UNKNOWN';
    }
  }
}
