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
    print("\nBem vindo, ${usu.verifica(senha)}.");
    break;
  }else{
    print("Senha inválida, tente novamente");
  }
  }
  while(true){
    print("\nO que deseja fazer?");
    print("1- Saque na Conta");
    print("2- Depósito na Conta");
    print("3- Consultar saldo na conta corrente");
    print("4- Consultar saldo na poupança");
    print("5- Transferir da conta corrente para poupança");
    print("6- Transferir da poupança para conta corrente");
    print("7- Sair");

    int op = int.parse(stdin.readLineSync()!);
    int valor;
    switch(op){
      case 1:
        print("Digite o valor que deseja sacar:");
        valor = int.parse(stdin.readLineSync()!);
        caixa.saqueCC(valor);
      case 2:
        print("Digite o valor que deseja depositar:");
        valor = int.parse(stdin.readLineSync()!);
        caixa.depositoCC(valor);
      case 3:
        caixa.consultaCC();
      case 4:
        caixa.consultaP();
      case 5:
        print("Digite o valor que deseja transferir:");
        valor = int.parse(stdin.readLineSync()!);
        caixa.transferCCtoP(valor);
      case 6:
        print("Digite o valor que deseja transferir:");
        valor = int.parse(stdin.readLineSync()!);
        caixa.transferPtoCC(valor);
    }
    if(op==7){
      break;
    }
  }
  return 0;
}