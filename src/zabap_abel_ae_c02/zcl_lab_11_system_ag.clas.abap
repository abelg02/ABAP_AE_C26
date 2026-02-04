*1. Herencia
*Crea la clase ZCL_LAB_11_SYSTEM con el atributo ARCHITECTURE de tipo
*STRING en la sección pública y asígnale el valor 64BITS. En la misma sección
*crea el método GET_ARCHITECTURE con un parámetro de salida que
*devuelve el valor del atributo ARCHITECTURE. A continuación, crea la clase
*ZCL_LAB_12_LINUX que herede de la clase ZCL_LAB_11_SYSTEM y en la
*clase de ejecución crea un objeto referenciado a la clase
*ZCL_LAB_12_LINUX. ¿Se puede llamar al método de la clase superior con la
*referencia del objeto de la clase hija?
*
*2. Constructores con herencia
*Crea la clase ZCL_LAB_13_VIEW con un constructor de instancia en la
*sección pública que tiene un parámetro de entrada llamado IV_VIEW_TYPE
*de tipo STRING. En la sección protegida crea los atributos VIEW_TYPE y BOX
*de tipo STRING. En la lógica del constructor actualiza el atributo VIEW_TYPE.
*Crea otra clase llamada ZCL_LAB_14_GRID que tiene un constructor de
*instancia en la misma sección pública que tiene el parámetro de entrada
*IV_BOX de tipo STRING y que hereda de la clase ZCL_LAB_13_VIEW. En el
*método constructor actualiza el atributo BOX heredado de la clase padre.
*Implementa todo lo que es necesario para poder instanciar un objeto de la
*clase ZCL_LAB_14_GRID en la clase de ejecución.
*
*3. Redefinición de métodos
*Crea las siguientes tres clases:
*- ZCL_LAB_15_FLIGHT_PRICE que va a tener el atributo
*MT_FLIGHTS de tipo tabla /DMO/FLIGHT en la sección pública, en
*el que se guardará el registro del vuelo que también contiene el
*componente del precio. En la misma clase definimos el método
*ADD_PRICE con un parámetro IMPORTING de tipo /DMO/FLIGHT.
*En la lógica del método agregamos con la instrucción APPEND el
*registro en la tabla interna representada por el atributo
*MT_FLIGHTS.
*ZCL_LAB_16_PRICE_DISCOUNT será la segunda clase que va a
*heredar de la primera, y donde se aplicará un cambio en la lógica
*del método ADD_PRICE aplicando un 10% de descuento en los
*precios de los vuelos, el campo PRICE.
*- ZCL_LAB_17_SUPER_DISCOUNT será la tercera clase donde
*también redefinimos el método y le aplicamos un descuento de
*20% al precio.
*
*Crea tres instancias de cada clase y llama al método ADD_PRICE en la clase
*de ejecución con un registro obtenido de la tabla /DMO/FLIGHT. Muestra
*en la consola el precio habitual y los precios con descuentos.
*
*4. Narrowing Cast
*Crea una jerarquía de dos clases (ZCL_LAB_18_ANIMAL y
*ZCL_LAB_19_LION). En la clase superior define el método WALK y en la
*implementación del método devuelve la cadena de caracteres “The animal
*walks”. En la clase hija redefine el mismo método e implementa la lógica
*que devuelve la cadena de caracteres “The lion walks”. Utiliza Narrowing
*Cast para asignar una instancia de la clase hija en una referencia de la clase
*superior y llama al método WALK de la referencia ZCL_LAB_18_ANIMAL en
*la clase de ejecución. ¿Quién anda?
*
*5. Widening Cast
*Utilizando las clases de la anterior actividad (ZCL_LAB_18_ANIMAL y
*ZCL_LAB_19_LION), en la clase de ejecución crea dos referencias de la clase
*LION e instancia un objeto en la primera referencia. Asigna a una referencia
*de tipo ANIMAL el objeto instanciado. Utiliza Widening Cast y asigna a la
*segunda referencia de la clase LION la referencia del objeto ANIMAL. Llama
*desde la referencia LION al método WALK. ¿Quién anda?
*Utiliza los bloques TRY-CATCH para capturar las excepciones de tipo CAST.
*
*6. Clase Final
*Crea la clase ZCL_LAB_20_PERSON y bloquea la clase para que ninguna
*clase pueda heredar de ella.

*7. Método final
*Modifica la definición de la anterior clase ZCL_LAB_20_PERSON eliminando
*la restricción de la clase final. En la misma clase crea un atributo de instancia
*NAME en la sección protegida. Define un método llamado SET_NAME que
*tiene un parámetro de entrada IV_NAME que establece el valor del atributo
*de instancia. Restringe la redefinición del método para las clases hijas.
*8. Encapsulación de instancias
*Crea la clase ZCL_LAB_21_CLASSROOM y restringe la creación de las
*instancias a las clases hijas. Para comprobar si funciona correctamente crea
*la clase hija ZCL_LAB_22_STUDENT con el método de instancia
*ASSIGN_STUDENT en la sección pública. Dentro del método instancia un
*objeto de la clase superior ZCL_LAB_21_CLASSROOM. A continuación,
*intenta generar un objeto de tipo ZCL_LAB_21_CLASSROOM fuera del árbol
*jerárquico, por ejemplo, en la clase de ejecución. ¿Se puede crear?
*
*9. Concepto Friends – Clase amiga
*Crea la clase ZCL_LAB_23_COMPANY con un atributo de instancia CAPITAL
*en la sección privada. La creación de instancia de la clase es pública y tiene
*en su definición una clase amiga (GLOBAL FRIENDS) llamada
*ZCL_LAB_24_PARTNER. En la clase ZCL_LAB_24_PARTNER crea un método
*de instancia funcional público GET_COMPANY_CAPITAL que obtiene el
*valor del atributo privado de la clase ZCL_LAB_23_COMPANY. En la clase
*de ejecución declara una referencia de la clase ZCL_LAB_24_PARTNER e
*instancia el objeto. Desde la referencia declarada invoca el método definido
*y muestra por pantalla el valor del atributo CAPITAL.
*
*10. Herencia con clase amiga
*Amplía la lógica de la anterior actividad (Concepto Friends – Clase Amiga) y
*crea la clase ZCL_LAB_25_COLLABORATOR que hereda de la clase
*ZCL_LAB_24_PARTNER, clase que es amiga de la clase
*ZCL_LAB_23_COMPANY. En la nueva clase creada define e implementa un
*método funcional llamado GET_CAPITAL en la sección pública que devuelve
*el valor del atributo privado CAPITAL de la clase ZCL_LAB_23_COMPANY.
*
*En la clase de ejecución declara una referencia de la clase creada y muestra
*en la consola el valor que devuelve el método
*OBTENER_CAPITAL_EMPRESA.

CLASS zcl_lab_11_system_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA architecture TYPE string VALUE '64BITS'.

    METHODS get_architecture
      EXPORTING ev_architecture TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_11_system_ag IMPLEMENTATION.

  METHOD get_architecture.
    ev_architecture = architecture.
  ENDMETHOD.

ENDCLASS.

