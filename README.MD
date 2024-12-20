1. ¿Qué es la arquitectura MVC y cuál es su propósito en el desarrollo de aplicaciones 
web? 
    R: El modelo vista controlador es un tipo de arquitectura donde se separa la logica, de las vistas y los modelos, la idea tener una mejor gestion de codigo, permitir la escabilidad, permitir la reutilizacion de componentes y en general programar de manera mas ordenada.

2. Explica qué es la programación orientada a objetos (POO) y menciona algunos 
conceptos clave asociados a ella. 
    R: Es una abstracion de la programacion , pensando en las entidades como objetos que tienen atributos y metodos que pueden ser privados o publicos, 
     sus principales conceptos clave son la herencia, que es la capacidad de estos objetos de extenderse en nuevos conservando los anteriores propiedades y metodos y logrando adaptarlos para crar objetos nuevos
     tambien la encapsulacion que es esta capacidad de permitir o no el acceso a los atributos o metodos. y asi reservar la logica del objeto a su propia instancia.

3. Menciona algunos patrones de diseño J2EE y explica brevemente su propósito. 
    R:
    - Composite View : Permite agregar porciones de una pagina web a otra de manera estatica o dinamica
    - Intercepting Filter : Realiza comprobaciones cuando el cliente realiza una peticion, como comprobaciones de seguridad , transformar el contenkido , comprimirlo etc.
    - Front Controller : patron para crear servicios centralizados para validar los parametros , acciones y vistas de otros objeto y controlar las peticiones y unificar el codigo repetido
    -  

4. ¿Qué son las APIs, sockets y webservices? ¿Cuál es su propósito en el desarrollo de 
aplicaciones? 
    R:  
    - Las apis son interfaces permiter manejar la logica para acceder a datos de una base de datos por medio de llamadas http establecidad tipo GET, POST , UPDATE, DELETE, y asi acceder a estos datos desde el frontend de una manera estandarizada y clara.
    - Socket (web) en el mismo contexto son interfaces que a diferencia de las apis permiter tener una conexion persistente con el cliente, siendo muy util para comunicacion en tiempo real como videojuegos , chats, y otros.
    - los web services son  servicos que se consumen a travez de internet , como los servicios REST, API ya mencionadas , AJAX, SOAP entre otras.

5. ¿Qué significa REST y SOAP en el contexto de servicios web? ¿Cuáles son las 
principales diferencias entre ellos? 
    R: 
    - REST es un tipo de servico web e interface que permite realizar acciones en un sistema, sus verbos principales son GET, POST, PUT y DELETE

    - SOAP es un  protocolo de interface de servicios web que utiliza XML  y sigue los estandares de la W3C que define una esturctura especifica para el mensaje XML que requiere. ( ENVELOP, HEADER , BODY)

6. ¿Qué es Kubernetes y cuál es su función en el despliegue y gestión de aplicaciones en 
contenedores?

    R: Kubernetes es una plataforma para adminsitrar cargas de trabajos y servicios, enfocado en la automatizacion y en una configuracion declarativa, permite adminsitrar de esta manera los contenedores y microservicios que se hayan desarrollado y permitir un escalamiento de los servicios.