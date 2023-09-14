object bombon {
	var peso = 15
	
	method precio() = 5
	method peso() = peso
	method sabor() = "frutilla"
	method esLibreDeGluten() = true
	
	method recibirMordisco(){
		peso = 0.max((peso * 0.8) - 1)
	}
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	method peso() = peso
	method sabor() = "chocolate"
	method esLibreDeGluten() = false
	
	method recibirMordisco(){
		peso = (peso * 0.8)
	}
}

object caramelo {
	var peso = 5
	
	method precio() = 1
	method peso() = peso
	method sabor() = "frutilla"
	method esLibreDeGluten() = true
	
	method recibirMordisco(){
		peso = 0.max(peso - 1)
	}
}

object chupetin {
	var peso = 7
	
	method precio() = 2
	method peso() = peso
	method sabor() = "naranja"
	method esLibreDeGluten() = true
	
	method recibirMordisco(){
		peso = 2.max(peso * 0.9)
	}
}

object oblea {
	var peso = 250
	
	method precio() = 5
	method peso() = peso
	method sabor() = "vainilla"
	method esLibreDeGluten() = false
	
	method recibirMordisco(){
		if (peso > 70){
			peso = peso * 0.5
		}else{
			peso = peso * 0.75
		}
	}
}

object chocolatin {
	var peso = 40
	const precio = peso * 0.5
	
	method peso() = peso
	method precio() = precio
	method sabor() = "chocolate"
	method esLibreDeGluten() = false
	
	method recibirMordisco(){
		peso = 0.max(peso - 2)
	}
}

object golosinaBaniada {
	var golosinaBase 
	var peso = 4
	
	method precio() = golosinaBase.precio() + 2
	method peso() = golosinaBase.peso() + peso
	method sabor() = golosinaBase.sabor()
	method esLibreDeGluten() = golosinaBase.esLibreDeGluten()
	
	method golosinaBase(golosina){
		golosinaBase = golosina
	}
	method recibirMordisco(){
		golosinaBase.recibirMordisco()
		peso = 0.max(peso - 2)
	}
}

object tuttiFrutti {
	var esLibreDeGluten = true
	const sabor = ["frutilla","naranja","chocolate"]
	var contador = 0
	
	method precio() = if(esLibreDeGluten){7}else{10}
	method peso() = 5
	method sabor() = sabor.get(contador % sabor.size())
	method esLibreDeGluten() = esLibreDeGluten
	
	method esLibreDeGluten(bolean){
		esLibreDeGluten = bolean
	}
	method recibirMordisco(){
		contador ++
	}
}