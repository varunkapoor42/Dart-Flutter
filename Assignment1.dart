// @dart= 2.9
void main() {
  var Maharashtra = {
    'Name': 'Maharashtra',
    'confirmed': 10000,
    'active': 5000,
    'recovered': 2500,
    'Deceased': 2500,
  };
  var Kerela = {
    'Name': 'Kerela',
    'confirmed': 9000,
    'active': 4000,
    'recovered': 3000,
    'Deceased': 2000,
  };
  var Karnataka = {
    'Name': 'Karnataka',
    'confirmed': 8000,
    'active': 3000,
    'recovered': 1500,
    'Deceased': 3500,
  };
  var Andhrapradesh = {
    'Name': 'Andhrapradesh',
    'confirmed': 6000,
    'active': 5000,
    'recovered': 500,
    'Deceased': 500,
  };
  var TamilNadu = {
    'Name': 'Tamil Nadu',
    'confirmed': 7000,
    'active': 2000,
    'recovered': 1000,
    'Deceased': 4000,
  };
  ;
  var States = [Maharashtra, Kerela, Karnataka, Andhrapradesh, TamilNadu];
  print("simple List as ordered");
  print(States);
  for (int i = 0; i < States.length; i++) {
    for (int j = 0; j < States.length - i - 1; j++) {
      if (States[j]['Deceased'] as int > States[j + 1]['Deceased']) {
        var temp = States[j];
        States[j] = States[j + 1];
        States[j + 1] = temp;
      }
    }
  }
  print("List after sorting");
  print(States);
}
