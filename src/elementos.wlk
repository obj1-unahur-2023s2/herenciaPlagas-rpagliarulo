import plagas.*

class Hogar  {
	var nivelDeMugre
	const confort
	
	method esBueno()= nivelDeMugre <= (confort / 2) 
	method efectoAtaque(plaga) {nivelDeMugre += plaga.nivelDeDanio()} 
}

class Huerta  {
	var property nivel
	var capacidadDeProduccion
	
	method esBueno()= capacidadDeProduccion > nivel
	method efectoAtaque(plaga) {capacidadDeProduccion -= plaga.nivelDeDanio() * 0.10
		if (plaga.transmiteEnfermedades()) {capacidadDeProduccion -= 10}
	}
}

class Mascota  {
	var nivelDeSalud
	
	method esBueno()= nivelDeSalud > 250
	method efectoAtaque(plaga) {if (plaga.transmiteEnfermedades()) {nivelDeSalud -= plaga.nivelDeDanio()} }
}




