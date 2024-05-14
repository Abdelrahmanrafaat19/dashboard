class BookAppointmentModel {
  List<Data>? data;
  Meta? meta;

  BookAppointmentModel({this.data, this.meta});

  BookAppointmentModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
}

class Data {
  int? id;
  Attributes? attributes;

  Data({this.id, this.attributes});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
  }
}

class Attributes {
  String? name;
  String? phone;
  String? email;
  String? age;
  String? perferedContact;
  String? services;
  String? serviceType;
  String? message;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;

  Attributes(
      {this.name,
      this.phone,
      this.email,
      this.age,
      this.perferedContact,
      this.services,
      this.serviceType,
      this.message,
      this.createdAt,
      this.updatedAt,
      this.publishedAt});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    age = json['age'];
    perferedContact = json['Perfered_Contact'];
    services = json['Services'];
    serviceType = json['Service_Type'];
    message = json['message'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
  }
}

class Meta {
  Pagination? pagination;

  Meta({this.pagination});

  Meta.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }
}

class Pagination {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  Pagination({this.page, this.pageSize, this.pageCount, this.total});

  Pagination.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    pageSize = json['pageSize'];
    pageCount = json['pageCount'];
    total = json['total'];
  }
}
