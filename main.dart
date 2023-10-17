import 'dart:io';
import 'caixa_eletronico.dart';
import 'usuario.dart';

int main (){
  var usu = Usuario();
  caixa_eletronico caixa = caixa_eletronico(1000,5000,usu);
  while(true){
  print("Bem vindo ao Caixa da Asimov, insira sua senha:");
  String? senha = stdin.readLineSync();
  if(usu.verifica(senha)!=null){
    print("Bem vindo, ${usu.verifica(senha)}.");
    break;
  }else{
    print("Senha inválida, tente novamente");
  }
  }
  return 0;
}