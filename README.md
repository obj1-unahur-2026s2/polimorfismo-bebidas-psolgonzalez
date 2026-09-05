import bebidas.*

describe "test bebidas" {
test "la velocidad de tito es 7" {
  assert.equals(7, tito.velocidad())
}
test "velocidad de pepe si consume 10 de dianuro es 66,15" {
  pepe.consumir(10, cianuro)
  assert.equals(10.8 * 490 / 80, pepe.velocidad())
}
test "tito es feliz si corre a más de 7 de velocidad" {
  assert.that(tito.esFeliz())
}
test "no es feliz si consume cianuro" {
  tito.consumir(10,cianuro)
  assert.notThat(tito.esFeliz())
}

}