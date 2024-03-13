/*
 - List
 - Set
 - Map
*/
void main(List<String> args) {
  var aprovados = ['Ana', "Carlos", "Daniel", "Rafael"];
  print(aprovados.runtimeType);
  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[0]);
  print(aprovados.length);

  var telefones = {
    "João": "+55 (11) 98765-4321",
    "Maria": "+55 (11) 97654-3210",
    "Pedro": "+55 (11) 98654-3210",
    "Lucas": "+55 (11) 96654-3210",
  };

  print(telefones.runtimeType);
  print(telefones is Map);
  print(telefones);
  print(telefones["Maria"]);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  var times = {"Vasco", "Flamengo", "Fortaleza", "São Paulo"};
  times.add("Palmeiras");
  times.add("Palmeiras");
  times.add("Palmeiras");
  print(times.runtimeType);
  print(times is Set);
  print(times);
  print(times.length);
  print(times.contains("Vasco"));
  print(times.first);
  print(times.last);
}
