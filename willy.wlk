import empresas.*
import loompedin.*
object willy{
// willy wonka
    const oompasContratados=#{}
    const proyectos=#{cadbury}
    method contratarA(unOompa){
      oompasContratados.add(loompedin.buscarA(unOompa))
      loompedin.quitarA(unOompa)
    }
    method asignar_A_(unEmpleado,unProyecto){
    //aclaracion: va a asignar un empleado hacia un proyecto siempre y cuando este tenga al menos un Oompa Loompa disponible.
      if (not( unProyecto.estaLlenoDeEmpleados() and self.estaContratado(unEmpleado))){
        unProyecto.agregar(loompedin.buscarA(unEmpleado))
        unEmpleado.estaAsignado(true)
        oompasContratados.remove(unEmpleado)
      } else {
        console.println("[error] el proyecto "+unProyecto+" esta lleno como para agregar a "+unEmpleado)
      }
    }
    //-----------------------
    //mensajes privados
    method estaContratado(unOompa){
      const oompaEncontrado=oompasContratados.findOrDefault({p=>p.id()==unOompa.id()},0)
      return self.si_TrueSinoFalse(oompaEncontrado!=0)
    }
    method si_TrueSinoFalse(condicion){
      var bandera=true
      if(condicion){
        bandera=true
      }
      else{
        bandera=false
      }
      return bandera
    }
    method motivarA(unEmpleado){
       unEmpleado.motivar()
    }
    //--------------------------
    method cuantosFeaturesResuelve(unEmpleado){
      return unEmpleado.cantDeFeatures()
    }
    method avanzarTodosLosProyectosPorUnDia(){
      proyectos.forEach({p=>p.avanzarProyecto()})
    }
    method saberCuantosProyectosNoEstanTerminados(){
      return proyectos.count({p=>p.estaTerminado()})
    }
    method motivarATodosLosEmpleadosDeCadaProyecto(){
       proyectos.forEach(
        {unProyecto=>unProyecto.forEach({ unEmpleado => self.motivarA(unEmpleado) })}
      )
    }
    method saberCuantosEmpleadosNoEstanAsignados()=oompasContratados.size()
}