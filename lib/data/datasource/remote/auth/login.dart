import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postdata( String username , String email ,String password) async {
    var response = await crud.postData(AppLink.login, {
      "username" : username ,
      "email" : email ,
      "password" : password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
