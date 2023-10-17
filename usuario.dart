class Usuario{
  var cliente= [
    {'nome':'Carlos','senha':'123'},
    {'nome':'Lucas','senha':'abc'},
    {'nome':'Maria','senha':'senha'},
  ];

String? verifica(String senha){
    for (var item in cliente) {
      if(item['senha']==senha){
        return item['senha'];
      }
  }
  return null;
}

}