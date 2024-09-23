object cadbury{
    //aclaracion: representa la empresa cadbury
    const oompas=#{}
    var features=5
    method features()=features
    method agregar(unEmpleado){
        oompas.add(unEmpleado)
    }
    method avanzarProyecto(){
        features=0.max(features-oompas.sum({p=>p.features()}))
    }
    method estaLlenoDeEmpleados(){
        //PROPOSITO: Indica si no pueden haber mas empleados trabajando en Cadbury.
        return oompas.size()>1
    }
    method estaTerminado(){
        //PROPOSITO: Indica si el proyecto de cadbury esta terminado.
        return features==0
    }
}