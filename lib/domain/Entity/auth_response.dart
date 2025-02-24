class AuthResponseEntity {
  AuthResponseEntity({
    this.message,
    this.user,
    this.token,
   
  });

  String? message;
  UserResponseEntity? user;
  String? token;
  
}

class UserResponseEntity {
  UserResponseEntity({
    this.name,
    this.email,
    
  });

  String? name;
  String? email;

}
