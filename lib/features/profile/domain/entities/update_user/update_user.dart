import 'dart:io';

class UpdateUser {
  final String? name;
  final String? phone;
  final String? address;
  final File? image;

  UpdateUser({
    this.name,
    this.phone,
    this.address,
    this.image,
  });
}
