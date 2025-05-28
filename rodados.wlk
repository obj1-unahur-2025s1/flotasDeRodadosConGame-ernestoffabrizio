class Municipalidad{
  const rodados = []
  var property cantidadEmpleados = 0
  method agregarAFlota(rodado){rodados.add(rodado)}
  method quitarDeFlota(rodado){rodados.remove(rodado)}
  method pesoTotalFlota() = rodados.sum{r => r.peso()}
  method estaBienEquipada() = rodados.size() > 3 and rodados.all{r => r.velocidad() >= 1000}
  method capacidadTotalEnColor(color) = rodados.filter({r => r.color() == color}).sum({r => r.capacidad()})
  method colorDelRodadoMasRapido() = rodados.max({r => r.velocidad()}).color()
  method capacidadFaltante() = cantidadEmpleados - rodados.sum({r => r.capacidad()})
  method esGrande() = rodados.size() > 5 and cantidadEmpleados > 40
}
class Corsa{
  var property color
  method capacidad() = 4
  method velocidad() = 150
  method peso() = 1300
  method initialize(){ 
    if(not colores.validos().contains(color)){
      self.error(color.toString() + "no es un color válido")}
      }
}
class Kwid{
  const tieneTanque
  method capacidad() = if (tieneTanque) 3 else 4
  method velocidad() = if (tieneTanque) 120 else 110
  method peso() = if (tieneTanque) 1350 else 1200
  method color() = "azul"
}
class Especial{
  const property capacidad
  const property velocidad
  const property peso
  const property color
  method initialize(){
    if(not colores.validos().contains(color)){
      self.error(color.toString() + "no es un color válido")}
  }
}
object traffic{
  var property interior = interiorComodo
  var property motor = motorPulenta
  method capacidad() = interior.capacidad()
  method velocidad() = motor.velocidad()
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = "blanco"
}
object motorPulenta{
  method peso() = 800
  method velocidad() = 130
}
object motorBataton{
  method peso() = 500
  method velocidad() = 80
}
object interiorComodo{
  method capacidad() = 5
  method peso() = 700
}
object interiorPopular{
  method capacidad() = 12
  method peso() = 1000
}
object colores{
  method validos() = #{"rojo", "verde", "blanco", "negro", "azul", "beige"}
}
