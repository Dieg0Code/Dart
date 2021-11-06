main() {
  List<String> villanos = ['Voldemort', 'Darth Vader', 'Sauron'];

  villanos.add('Magneto');
  villanos.add('Magneto');
  villanos.add('Magneto');

  print(villanos);

  Set<String> villanos2 = {'Voldemort', 'Darth Vader', 'Sauron'};

  var villanosSet = Set.from(villanos);
  print(villanosSet.toList());
}
