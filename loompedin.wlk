object loompedin{
    const oompas=#{juan,guillermo,esteban,ricardo,pepita}
    method buscarA(unEmpleado){
        return oompas.findOrDefault({persona=>(persona.id()==unEmpleado.id())},0)
    }
    method quitarA(unEmpleado){
        return oompas.remove(self.buscarA(unEmpleado))
    }
    method hayUnOompa(){
        return oompas.size()>0
    }
}
//oompas loompas
object juan{
    //var property estaAsignado=false
    method id()=1 //numero de identificacion del oompa
    method cantDeFeatures()=1 //cantidad de features que resuelve por dia
    method motivar(){} //motivarlo no modifica su forma de trabajar.
}
object guillermo{
    //var property estaAsignado=false
    var calidadDeSusAnteojos=1
    method cantDeFeatures()=calidadDeSusAnteojos //cantidad de features que resuelve por dia
    method id()=2 //numero de identificacion del oompa
    method motivar(){
        calidadDeSusAnteojos=calidadDeSusAnteojos+1 //motivarlo le suma 1 a la calidad de sus anteojos
    }
}
object esteban{
    //var property estaAsignado=false
    var cantDeFeatures=10
    method id()=3 //numero de identificacion del oompa
    method cantDeFeatures()=cantDeFeatures //cantidad de features que resuelve por dia
    method motivar(){
        cantDeFeatures=0.max(cantDeFeatures-1)
    }
}
object ricardo{
    //var property estaAsignado=false
    method id()=4 //numero de identificacion del oompa
    method cantDeFeatures()=0 //cantidad de features que resuelve por dia
    method motivar(){
        //motivarlo no sirve para nada
    }
}
object pepita{
    //var property estaAsignado=false
    var caloriasQueConsumio=0
    method id()=5 //numero de identificacion del oompa
    method cantDeFeatures()=caloriasQueConsumio/500 //cantidad de features que resuelve por dia
    method motivar(){
        //al motivarla ingiere 1000 calorias
        caloriasQueConsumio=caloriasQueConsumio+1000
    }
}