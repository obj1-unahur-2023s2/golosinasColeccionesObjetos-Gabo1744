import golosinas.*

object mariano {
	const golosinas = []
	
	method comprar(unaGolosina){
		golosinas.add(unaGolosina)
	}
	method desechar(unaGolosina){
		golosinas.remove(unaGolosina)
	}
	method cantidadDeGolosinas() = golosinas.size()
	method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
	
	method probarGolosinas(){
		golosinas.forEach( { gol => gol.recibirMordisco()})
	}
	
	method hayGolosinaSinTACC() = golosinas.any( { golosina => golosina.esLibreDeGluten()})
	
	method preciosCuidados() = golosinas.all({golosina => golosina.precio() <= 10})
	
	method golosinaDeSabor(unSabor) = golosinas.find({golosina => golosina.sabor() == unSabor})
	
	method golosinasDeSabor(unSabor) = golosinas.filter({golosina => golosina.sabor() == unSabor})
	
	method sabores() = golosinas.map({golosina => golosina.sabor()}).asSet()
	
	method golosinaMasCara() =	golosinas.max({gol => gol.precio()})
	
	method pesoGolosinas() = golosinas.sum({ golosina => golosina.peso()})
	
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(golosinas.asSet())
	}
	
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.difference(self.sabores())
	}
}
