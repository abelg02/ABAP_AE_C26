CLASS zcl_lab_01_ejec_ag DEFINITION

*1. Clase de ejecución
*Crea un paquete de desarrollo en el que debes crear una clase ABAP con el
*nombre ZCL_LAB_01_EJEC que implementa la interfaz
*“IF_OO_ADT_CLASSRUN” para disponer de la implementación del método
*“MAIN” que será usado más adelante en la en la ejecución de los diferentes
*procesos a implementar.
*Nota: El nombre de la clase puede ser diferente. Es recomendable usar
*como sufijo en el nombre de la clase los últimos cuatro caracteres del
*usuario SAP para evitar conflictos con otros estudiantes en la asignación de
*los nombres de los objetos ABAP.
*
*2. Creación de clases
*Comprueba si en la instancia ABAP, del entorno Cloud del BTP, si existe el
*elemento de datos ZDATE. Si no existe, en el paquete de desarrollo crea el
*elemento de datos ZDATE que es de tipo DATS.
*Continua con la creación de una clase ABAP con el nombre
*ZCL_LAB_02_PRODUCT con dos atributos de instancia en la encapsulación
*privada llamados:
*- PRODUCT de tipo MATNR
*- CREATION_DATE de tipo ZDATE
*y dos métodos llamados SET_PRODUCT y SET_CREATIONDATE en la
*encapsulación pública. Cada método debe tener un parámetro de entrada
*que actualiza los atributos PRODUCT y CCREATION_DATE.
*
*3. Encapsulación
*Crea la clase ZCL_LAB_03_CONTRACT con los siguientes componentes en
*cada sección de encapsulación: pública, protegida y privada:
*1. Sección pública
*Atributo: CNTR_TYPE – de tipo carácter de dos posiciones.
*Método: SET_CREATION_DATE. Utiliza un parámetro IMPORTING
*(IV_CREATION_DATE) para establecer el valor del atributo
*CREATION_DATE.
*2. Sección protegida
*Atributo: CREATION_DATE de tipo ZDATE.
*3. Sección privada
*Atributo: CLIENT de tipo cadena de caracteres dinámica STRING.
*
*4. Atributos de instancia y atributos estáticos
*Explica la diferencia entre un atributo con encapsulación pública y un
*atributo con encapsulación protegida o privada.
*
*5. Métodos de instancia y métodos estáticos
*Crea la clase ZCL_LAB_04_PERSON con el atributo AGE de tipo número
*entero en la sección privada y crea dos métodos de instancia en la sección
*pública. El primer método establece el valor del atributo por el parámetro
*de entrada del método y el segundo método devuelve el atributo de la clase
*por el parámetro que exporta el método. Declara una referencia de esta
*clase en el método MAIN de la clase creada en la primera actividad (desde
*aquí en adelante clase de ejecución) e instancia el objeto. Llama al primer
*método con tu edad en el parámetro y muestra por pantalla el valor del
*atributo utilizando el segundo método.
*
*6. Métodos funcionales
*Crea la clase ZCL_LAB_05_FLIGHT con un método funcional que devuelve
*VERDAD (X) o FALSO (space) en cuanto le pasemos el código de la compañía
*aérea y un número de conexión de vuelo. La comprobación se debe hacer
*con la tabla de base de datos /DMO/FLIGHT.
*Instancia e invoca el método funcional desde la clase de ejecución.
*
*7. Utilizar tipos de datos en clases
*Crea la clase ZCL_LAB_06_ELEMENTS y declara la estructura de datos
*TY_ELEM_OBJECTS con tres componentes: CLASS, INSTANCE y REFERENCE
*del tipo cadena de caracteres dinámica STRING en la sección pública. Utiliza
*la clase de ejecución para declarar una estructura global referenciada al tipo
*de datos definido en la clase. En la misma clase ZCL_LAB_06_ELEMENTS
*crea el método SET_OBJECT que actualiza el atributo MS_OBJECT que está
*referenciado al tipo definido y realiza una llamada al método desde la
*misma clase de ejecución para mostrar el contenido de la estructura
*MS_OBJECT a través de la referencia de la clase en la consola.
*
*8. Constantes en clases
*Crea cuatro constantes en la clase definida en la anterior actividad y escribe
*en la consola con la ayuda del método MAIN de la clase de ejecución los
*valores de las constantes definidas utilizando el separador de las constantes
*sobre el nombre de la clase.
*
*9. READ-ONLY Restringir Acceso Escritura
*Crea la clase ZCL_LAB_07_STUDENT con el atributo de instancia
*BIRTH_DATE de tipo ZDATE en la encapsulación pública. Utiliza READ-ONLY
*para restringir la escritura al atributo fuera de la clase. Actualiza el valor del
*atributo creando el método de instancia SET_BIRTH_DATE en la misma
*encapsulación pública. En el método MAIN de la clase de ejecución crea una
*referencia de la clase ZCL_LAB_07_STUDENT y actualiza el valor de atributo
*con el método de instancia. ¿Es posible modificar el valor del atributo
*utilizando la referencia, el separador para los componentes de instancia y
*el nombre del atributo?
*
*10.Parámetro opcional
*En un programa ejecutable crea la clase local ZCL_LAB_08_WORK_RECORD
*con el método público estático OPEN_NEW_RECORD que tiene cuatro
*parámetros IMPORTING:
*- IV_DATE de tipo ZDATE
*- IV_FIRST_NAME de tipo STRING
*- IV_LAST_NAME de tipo STRING
*- IV_SURNAME de tipo STRING
*El último parámetro IV_SURNAME es opcional y los parámetros del método
*actualizan los siguientes atributos estáticos y privados:
*- DATE de tipo ZDATE
*- FIRST_NAME de tipo STRING
*- LAST_NAME de tipo STRING
*- SURNAME de tipo STRING
*En la clase de ejecución invoca el método de la clase.
*
*11.Autorreferencia
*Crea la clase ZCL_LAB_09_ACCOUNT que debe contener un atributo IBAN
*de tipo STRING en la sección privada. Implementa dos métodos SET y GET
*en la sección pública para actualizar y obtener el atributo creado. El
*parámetro de entrada y salida de los métodos debe tener el mismo nombre
*IBAN. Utiliza “self reference” para apuntar al atributo de la clase. Utiliza la
*clase de ejecución para llamar a los métodos mostrando en la consola el
*valor del atributo IBAN.
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_ag IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.


    DATA(lo_person) = NEW zcl_lab_04_person_ag( ).
    lo_person->set_age( iv_age = 22 ).
    lo_person->get_age( IMPORTING ev_age = DATA(lv_age) ).
    out->write( |Edad: { lv_age }| ).


    DATA(lo_flight) = NEW zcl_lab_05_flight_ag( ).
    DATA(lv_exists) = lo_flight->check_flight(
                        iv_carrid = 'LH'
                        iv_connid = '0400' ).

    out->write( |Vuelo existe: { lv_exists }| ).


    DATA(lo_elements) = NEW zcl_lab_06_elements_ag( ).
    lo_elements->set_object(
      iv_class     = 'ZCL_LAB_06_ELEMENTS'
      iv_instance  = 'INSTANCIA'
      iv_reference = 'REFERENCIA' ).

    out->write( lo_elements->ms_object-class ).
    out->write( lo_elements->ms_object-instance ).
    out->write( lo_elements->ms_object-reference ).

* Constantes
    out->write( zcl_lab_06_elements_ag=>gc_one ).
    out->write( zcl_lab_06_elements_ag=>gc_two ).
    out->write( zcl_lab_06_elements_ag=>gc_three ).
    out->write( zcl_lab_06_elements_ag=>gc_four ).


    DATA(lo_student) = NEW zcl_lab_07_student_ag( ).
    lo_student->set_birth_date( iv_birth_date = cl_abap_context_info=>get_system_date( ) ).
    out->write( lo_student->birth_date ).


    DATA(lo_account) = NEW zcl_lab_09_account_ag( ).
    lo_account->set_iban( iv_iban = 'ES6621000418401234567891' ).
    out->write( lo_account->get_iban( ) ).


    zcl_lab_08_work_record_ag=>open_new_record(
      iv_date = cl_abap_context_info=>get_system_date( )
      iv_first_name = 'Juan'
      iv_last_name  = 'Pérez' ).

  ENDMETHOD.

ENDCLASS.
