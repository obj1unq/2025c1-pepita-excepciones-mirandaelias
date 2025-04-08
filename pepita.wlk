object pepita {
	var energia = 100
	
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method puedeVolar(distancia){

	return energia >= self.energiaParaVolar(distancia)

	}

	method volar(distancia) {
	self.validadVolar(distancia)
	energia = energia - self.energiaParaVolar(distancia)
	}

	method validadVolar(distancia) {
		if(not self.puedeVolar(distancia)){
			self.error("No tengo energia para volar")
		}
	
	}

	method energiaParaVolar(distancia){
		return  10 + distancia
	}

	method energia(){
		return energia
	}

}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30
	
	method energia() {
		return energia
	}
		
	method comer(comida) {
		energia += comida.energiaQueAporta() / 2
	}
		
	method puedeVolar(distancia) {
	  return energia >= self.energiaParaVolar(distancia)
	}


	method volar(distancia) {
	self.validadVolar(distancia)
	energia = energia - self.energiaParaVolar(distancia)
	}
		
	method validadVolar(distancia) {
		if(not self.puedeVolar(distancia)){//si no puede volar da error sino vuela
		self.error("No tengo suficiente energia")
	}
	}

	method energiaParaVolar(distancia){
		return 20 + 2* distancia 
	}//dejar los calculos en los metodos
	
}

object roque {
	var ave = pepita
	var cenas = 0
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}
}

