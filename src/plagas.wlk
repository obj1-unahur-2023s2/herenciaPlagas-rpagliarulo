class Plaga {
	var property poblacion //al menos diez 
	method nivelDeDanio() = null
	method transmiteEnfermedades()= poblacion > 10
	method atacar(elemento) {
		elemento.efectoAtaque(self) 
		poblacion += poblacion * 0.10
	}
}

class PlagaDeCucarachas inherits Plaga {
	const pesoCucaracha
	var pesoPromedio = (pesoCucaracha * poblacion) / poblacion

	override method transmiteEnfermedades() {
		return super() && pesoPromedio >= 10
		}
		
	override method nivelDeDanio()= poblacion / 2
	
	override method atacar(elemento) {
		super()
		pesoPromedio += 2
	}
	
 }

class PlagaDeMosquitos inherits Plaga {
	
	override method transmiteEnfermedades() {
		return super() && poblacion % 3 == 0
	}
	override method nivelDeDanio()= poblacion 
}

class PlagaDePulgas inherits Plaga {
	

	override method nivelDeDanio()= poblacion * 2
}

class PlagaDeGarrapatas inherits PlagaDePulgas {
	
	override method atacar(elemento) {
		super()
		poblacion += poblacion * 0.20
	}
	
	//ver como sde hacia el cambio de uan sola parte del codigo
}