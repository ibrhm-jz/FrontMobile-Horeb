class LoginModel {
  final String userName;
  final String token;
  final int userId;
  final int id;
  final String email;
  final String tipoUsuario;

  LoginModel(this.userName, this.token,this.id, this.userId,this.email,this.tipoUsuario);

  LoginModel.fromJson(Map<String, dynamic> json)
      : userName = json['name'],
        token = json['token'],
        id = json['id'],
        userId=json['user_id'],
        email=json['email'],
        tipoUsuario=json['tipo_usuario'];
  Map<String, dynamic> toJson() =>
      {
        'name': userName,
        'token': token,
        'id': id,
        'user_id':userId,
        'email':email,
        'tipo_usuario':tipoUsuario

      };
}