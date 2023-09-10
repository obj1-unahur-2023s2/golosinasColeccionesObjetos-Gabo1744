object bombon {
	const caracteristicas =[5,15,"frutilla",false]
	
	method precio() = caracteristicas.get(0)
	method peso() = caracteristicas.get(1)
	method sabor() = caracteristicas.get(2)
	method esLibreDeGluten() = caracteristicas.get(3)
	
	/*method recibirMordisco(){
		caracteristicas.at(0) = (self.peso() * 0.8) -1
	}*/
}

object alfajor {
	const caracteristicas =[12,300,"chocolate",false]
	
	method precio() = caracteristicas.get(0)
	method peso() = caracteristicas.get(1)
	method sabor() = caracteristicas.get(2)
	method esLibreDeGluten() = caracteristicas.get(3)
}

object caramelo {
	const caracteristicas =[1,5,"frutilla",false]
	
	method precio() = caracteristicas.get(0)
	method peso() = caracteristicas.get(1)
	method sabor() = caracteristicas.get(2)
	method esLibreDeGluten() = caracteristicas.get(3)
}

object chupetin {
	const caracteristicas =[2,7,"naranja",false]
	
	method precio() = caracteristicas.get(0)
	method peso() = caracteristicas.get(1)
	method sabor() = caracteristicas.get(2)
	method esLibreDeGluten() = caracteristicas.get(3)
}

object oblea {
	const caracteristicas =[5,250,"vainilla",true]
	
	method precio() = caracteristicas.get(0)
	method peso() = caracteristicas.get(1)
	method sabor() = caracteristicas.get(2)
	method esLibreDeGluten() = caracteristicas.get(3)
}

object chocolatin {
	const caracteristicas =[0.5,"","chocolate",true]
	
	method precio() = caracteristicas.get(0)
	method peso() = caracteristicas.get(1)
	method sabor() = caracteristicas.get(2)
	method esLibreDeGluten() = caracteristicas.get(3)
}

object golosinaBaniada {
	var property golosina 
	const caracteristicas =[golosina.precio()+2,golosina.peso()+4,golosina.gusto(),golosina.esLibreDeGluten()]
	
	method precio() = caracteristicas.get(0)
	method peso() = caracteristicas.get(1)
	method sabor() = caracteristicas.get(2)
	method esLibreDeGluten() = caracteristicas.get(3)
}

object tuttiFrutti {
	var esLibreDeGluten
	var precio
	const caracteristicas =[precio,5,"chocolate",esLibreDeGluten]
	
	method precio() = caracteristicas.get(0)
	method peso() = caracteristicas.get(1)
	method sabor() = caracteristicas.get(2)
	method esLibreDeGluten() = caracteristicas.get(3)
}

