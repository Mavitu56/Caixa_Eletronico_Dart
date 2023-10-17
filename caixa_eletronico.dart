import 'usuario.dart';
class caixa_eletronico{
  int saldoCC; //saldo conta corrente
  int saldoP; //saldo poupança
  Usuario p;
  caixa_eletronico(this.saldoCC,this.saldoP,this.p);


  void depositoCC (int valor){
    saldoCC+=valor;
  }

  void saqueCC (int valor){
    if(valor>saldoCC){
      print("Saldo insuficiente");
    }else{
    saldoCC-=valor;
    }
  }

  void consultaCC (){
    print("Saldo conta corrente: \$$saldoCC");
  }

  void consultaP (){
    print("Saldo Poupança: \$$saldoP");
  }

  void transfer (int valor){

  }

}