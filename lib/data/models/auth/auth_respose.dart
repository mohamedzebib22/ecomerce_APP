import 'package:ecomerce_app/domain/Entity/auth_response.dart';

class AuthResponseDm extends AuthResponseEntity {
  AuthResponseDm({
      super.message, 
      super.user, 
      this.statusMsg,
      super.token,});

  AuthResponseDm.fromJson(dynamic json) {
    message = json['message'];
    statusMsg = json['statusMsg'];
    user = json['user'] != null ? UserResponseDm.fromJson(json['user']) : null;
    token = json['token'];
  }

  String? statusMsg;
 
}

class UserResponseDm extends UserResponseEntity{
  UserResponseDm({
      super.name, 
      super.email, 
      this.role,});

  UserResponseDm.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }
  
  String? role;

 

}