class Usuario{
  var cliente= [
    {'nome':'Carlos','senha':'123'},
    {'nome':'Lucas','senha':'abc'},
    {'nome':'Maria','senha':'senha'},
  ];

String? verifica(String? senha){
    for (var item in cliente) {
      if(item['senha']==senha){
        return item['nome'];
      }
  }
  return null;
}

void altera(String senha,String novasenha){
  for (var item in cliente) {
      if(item['senha']==senha){
        item['senha']=novasenha;
        print(item['senha']);
      }
}
}

}