object tito {
  var peso = 70
  var bebidaConsum =  terere
  var dosis = 10

  method peso() = peso
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  method esFeliz() = self.velocidad() >= 7

  method consumir(cantidad,bebida){
    bebidaConsum = bebida
    dosis = cantidad
  }

  method velocidad() {
    return bebidaConsum.rendimientoQOtorga(dosis,self) //argumento
    *490 / peso
  }

  //method bebidaConsum() = bebidaConsum

}
object pepe {
  var peso = 80
  var bebidaConsum =  whisky
  var dosis = 10
  var edad = 30

  method peso() = peso
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  method cumplirAnios() {
    edad + 1 
  }

  method consumir(cantidad,bebida){
    bebidaConsum = bebida
    dosis = cantidad
  }

  method velocidad() {
    return bebidaConsum.rendimientoQOtorga(dosis,self)
    *490 / peso - if (edad>30) 10 else 0
  }}


object whisky {
  method rendimientoQOtorga(dosisConsumida,  unDeportista) {//parametro
    return 0.9 ** dosisConsumida // potencia **
  }
}
object terere {
  method rendimientoQOtorga(dosisCons, unDeportista) { //polimorf lleva misma cant de param y metodo. Puedo cambiar el nombre
    return (0.1 * dosisCons).max(1)    //mensaje de consulta 
    


  }
}
object cianuro {
   method rendimientoQOtorga(dosisCianuro,unDeportista) {
    return if(unDeportista.peso() > 70) unDeportista.peso()* 0.01 + dosisCianuro else 0
   }
}
object nada {
  
}