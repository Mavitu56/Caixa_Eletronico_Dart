import 'caixa_eletronico.dart';
import 'usuario.dart';

int main (){
  var usu = Usuario();
  caixa_eletronico caixa = caixa_eletronico(1000,5000,usu);
  return 0;
}