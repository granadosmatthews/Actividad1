void main() {
  Vehiculo v = Vehiculo('Genérico');
  v.describir();

  Moto m1 = Moto('Yamaha');                  
  Moto m2 = Moto('Honda', cilindrada: 600);    

  m1.describir(); 
  m2.describir(); 
}
class Vehiculo {
  String marca;

  Vehiculo(this.marca); 

  void describir() {
    print('Vehículo de marca $marca');
  }
}

class Moto extends Vehiculo {
  int cilindrada;

  Moto(String marca, {this.cilindrada = 125}) : super(marca); 
  @override
  void describir() {                   
    print('Moto $marca de ${cilindrada}cc');
  }
}