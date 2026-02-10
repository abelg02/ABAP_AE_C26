*1. Polimorfismo con clases
*
*En el paquete de desarrollo crea un caso de uso con una clase superior y
*dos subclases para utilizar el polimorfismo. La condición clave es que las
*subclases tienen que redefinir al menos un método de la clase superior.
*Utiliza como clase superior la clase ZCL_LAB_29_ORGANIZATION con el
*método GET_LOCATION que devuelve a través de un parámetro
*RETURNING una cadena de caracteres con la localización y dos subclases
*llamadas ZCL_LAB_30_ORG_GERMANY y ZCL_LAB_31_ORG_FRANCE. Para
*comprobar si ha implementado correctamente el polimorfismo, en la clase
*de ejecución, declara una tabla interna de tipo referencia de la clase
*superior asignándole instancias de las subclases.
*
*2. Polimorfismo con interfaces
*
*Implementa el polimorfismo utilizando interfaces. Utiliza la interfaz
*ZIF_LAB_04_EMPLOYEE con el método GET_EMPLOYEES_COUNT que
*devuelve el número de empleados y crea dos clases que implementan la
*interfaz. Los nombres de las clases son ZCL_LAB_32_INTERNAL_EMPL y
*ZCL_LAB_33_EXPATRIATE_EMPL. Para comprobar si ha implementado
*correctamente el polimorfismo, en la clase de ejecución, declara una tabla
*interna de tipo referencia de la interfaz asignándole instancias de las
*subclases.
*
*3. Asociación
*
*Implementa la asociación utilizando las clases ZCL_LAB_34_STUDENT y
*ZCL_LAB_35_COLLEGE. La última clase tiene el método ENROLL_STUDENT
*que utiliza como parámetro IMPORTING un objeto de la clase
*ZCL_LAB_34_STUDENT, guardando la referencia en un atributo público. La
*primera clase tiene en la sección privada el atributo NAME de tipo STRING
*y los métodos SET y GET que actualiza y devuelve el atributo. Utiliza la clase
*de ejecución y comprueba el desarrollo utilizando referencias de las clases
*creadas.
*
*4. Composición
*
*Implementa la composición utilizando las clases ZCL_LAB_36_PHONE y
*ZCL_LAB_37_SCREEN. La clase PHONE tiene el método CONSTRUCTOR con
*un parámetro IMPORTING del tipo referenciado de la clase SCREEN. En la
*lógica del constructor se actualiza un atributo privado de la misma clase con
*la instancia de la clase SCREEN que también tiene en la sección privada el
*atributo SCREEN_TYPE y métodos públicos que actualizan el atributo.
*Utiliza la clase de ejecución para instanciar la clase PHONE con un tipo de
*pantalla.
*
*5. Múltiples referencias apuntando al mismo objeto
*
*Crea la clase ZCL_LAB_38_PROD_PRICE con el atributo público PRICE de
*tipo entero. En la clase de ejecución declara dos referencias de la clase e
*instancia un objeto que apunta en la primera referencia. Con una sentencia
*de asignación indica que la segunda referencia apunta al mismo objeto.
*Modifica el valor del atributo PRICE con la segunda referencia y comprueba
*el valor del mismo atributo en la primera referencia.
*
*6. Crear instancias de tipos distintos
*
*Crea la clase abstracta ZCL_LAB_39_BUDGET con el método abstracto
*GET_BUDGET que devuelve una cadena de caracteres. A continuación, crea
*la clase ZCL_LAB_40_ACTUAL_BUDGET que hereda de la clase abstracta. En
*la clase de ejecución instancia en una referencia de la clase abstracta un
*objeto del tipo de la clase que hereda de la clase abstracta.
*
*7. Asignar instancias a la clase genérica Object
*
*Crea la clase ZCL_LAB_41_ORGANIZATION con el método público
*SET_HEADQUARTERS que establece el valor del atributo privado
*HEADQUARTERS de tipo STRING. En la clase de ejecución declara una
*referencia de la clase OBJECT y crea un objeto del tipo
*ZCL_LAB_41_ORGANIZATION apuntando con la referencia declarada.
*Llama al método SET_HEADQUARTERS utilizando la referencia de la clase
*OBJECT con llamadas dinámicas. Comprueba si el valor del atributo
*HEADQUARTERS se ha cambiado correctamente creando el método
*GET_HEADQUARTERS, que se encarga de devolver el valor del atributo.

CLASS zcl_lab_29_organization_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS get_location
      RETURNING VALUE(rv_location) TYPE string.
  PROTECTED SECTION.
ENDCLASS.


CLASS zcl_lab_29_organization_ag IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Generic Organization'.
  ENDMETHOD.
ENDCLASS.

