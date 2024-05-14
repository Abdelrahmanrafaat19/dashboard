import 'package:dashboard/feature/book_appointment/data/diaplay_book_appointment_repo/model/subtype_book_appointment.dart';

class BookAppointmentData {
  int? id;
  Attributes? attributes;

  BookAppointmentData({this.id, this.attributes});

  BookAppointmentData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
  }
}
