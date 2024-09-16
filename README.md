# Willy Wonka y la fabrica de software
 
## Colecciones Bloques Polimorfismo Excepciones WCO

**Willy Wonka, aburrido de su fábrica de chocolate y aprovechando el segundo semestre decide reinvertir su tiempo y dinero en empezar una software factory.**
![Willy](https://parade.com/.image/t_share/MTkwNTgwODMyMTMxOTQ5Njkz/willy-wonka-quotes.png)

El ciclo comienza cuando un cliente tiene una idea para un proyecto y va a presentársela a  Willy. Como él está ansioso por crecer, acepta todos los proyectos y asigna un empleado siempre y cuando tenga al menos un Oompa Loompa disponible. (cada uno puede estar asignado a un solo proyecto) En este momento, se le presentaron varios proyectos a Willy Wonka:
- La empresa Cadbury necesita un sistema de gestión para manejar algunas partes de su producción de chocolate. Se estima que tiene, en total, 5 features  y puede tener un único empleado.
- [Vaporware](https://en.wikipedia.org/wiki/Vaporware) Inc tuvo la idea de hacer una aplicación que es similar a Facebook pero que además permite encontrar trabajo, teniendo una base de datos gigante. A su vez, tiene un Twitter integrado, una plataforma de pagos y cobros y un sistema de filtros para las fotos. Como frutilla del postre, integra un sitio muy parecido a Geocities. Si bien parece fácil de terminar, teniendo unos 20 features y sabiendo que Willy se comprometió a asignar más adelante a otros empleados para acelerarlo, el problema es que cada vez que un empleado resuelve alguna cantidad de features, el cliente agregar el doble de los features que se resolvieron.
- La verdulería del barrio necesita software para su balanza. No tiene features, sino que se estima que va a tardar 10 días en terminarse independientemente de que tenga empleados.

Willy, viendo que va a necesitar mano de obra para los 3 proyectos, busca en LoompedIn y encuentra a:
- Juan Carlos: Oompa Loompa metódico, resuelve una funcionalidad por día para cualquier proyecto, sin importar sus condiciones de trabajo. Motivarlo no modifica su forma de trabajar.
- Guillermo Puertas: Oompa Loompa eficiente, resuelve features en base a la calidad de sus anteojos. Motivarlo le suma 1 a la calidad de sus anteojos.
- Esteban Trabajos: Oompa Loompa creído, arranca con la moral muy alta, haciendo 10 features por día. Como es ególatra, intentar motivarlo hace que disminuya en uno lo que rinde.
- Ricardo Hombre Puesto: Oompa Loompa contestatario, sólo se queja, y todo el tiempo que invierte en un feature se pierde y no suma nada. Motivarlo, de la misma forma, no sirve para nada.
- Pepita: Oompa Loompa que funciona a base de comida. Resuelve un feature cada 500 calorías que consumió. Para Pepita, motivar es lo mismo que darle de comer: al motivarla ingiere 1000 calorías.
	
Cuando pasa un día, todos los proyectos hacen trabajar a sus empleados una vez.

Willy Wonka, entonces, nos pide representar todo esto en objetos. Puntualmente necesita poder:

- Contratar a un Oompa Loompa (inicialmente no se asigna a ningún proyecto)
- Aceptar un proyecto, asignándole instantáneamente un Oompa Loompa si lo hay.
- Saber cuántos features resuelve un determinado empleado en un día.
- Hacer que todos los proyectos avancen un día.
- Saber cuántos de sus proyectos aún no están terminados.
- Motivar a todos los empleados asignados a proyectos.
- Saber cuántos empleados le quedan sin proyecto asignado		
