*1. Definición y levantamiento de objetos
*
*Realiza la definición e implementa de la clase ZCL_LAB_42_SCREEN que
*define el evento de instancia TOUCH_SCREEN en la encapsulación pública.
*El evento exporta dos parámetros (posición horizontal y vertical) de tipo I.
*También implementa el método de instancia ELEMENT_SELECTED en la
*misma encapsulación pública con la lógica que levanta el evento
*TOUCH_SCREEN.
*
*2. Establecer clase receptora
*
*Crea la clase receptora ZCL_LAB_43_NAVIGATION que registra en el
*método ON_TOUCH_SCREEN el evento TOUCH_SCREEN de la clase
*implementada en la anterior actividad. En la implementación del método
*actualiza el atributo LOG de tipo STRING, que se tiene que definir en la
*encapsulación pública, con la cadena de caracteres que indica las posiciones
*enviadas por el levantamiento del evento.
*
*3. Establecer referencia manejadora – EVENT HANDLER
*
*En la clase de ejecución crea un manejador (handler) sobre una referencia
*de la clase ZCL_LAB_43_NAVIGATION. Implementa el código necesario
*para simular el levantamiento del evento.
*
*4. Utilizar la referencia del objeto diseñador con SENDER
*
*Amplia la lógica implementada en las anteriores actividades creando el
*atributo SCREEN_TYPE de tipo STRING en la sección pública de la clase
*ZCL_LAB_42_SCREEN. Actualiza dicho atributo en el constructor de
*instancia de la clase que tendrá un parámetro de entrada del mismo tipo
*que el atributo de la clase.
*
*Después, utiliza la referencia SENDER del objeto que levanta el evento
*TOUCH_SCREEN en el método ON_TOUCH_SCREEN de la clase
*NAVEGACION que ha registrado el evento. En la implementación del
*método registrador actualiza el LOG con el valor del atributo SCREEN_TYPE.
*En la clase de ejecución modifica la instrucción que genera la instancia de
*la clase SCREEN por haber implementado el constructor con el parámetro
*IMPORTING, enviando como cadena de caracteres el tipo de la pantalla.
*
*5. Definir eventos en las interfaces
*
*Define el evento CLOSE_WINDOW en la interfaz ZIF_LAB_05_BROWSER.
*Crea la clase ZCL_LAB_44_OPERATING_SYSTEM que implementa la interfaz
*y levanta el evento en el método MOUSE_MOVEMENT. Crea otra clase
*ZCL_LAB_45_CHROME que declara el método ON_CLOSE_WINDOW que
*registra el evento. Utiliza atributos como logs en la definición de las clases
*para mantener el log y establece un manejador (HANDLER) en la clase de
*ejecución y llama al método que levanta el evento.
*
*6. Desactivar objeto manejador
*
*Amplía la lógica de la clase de ejecución para desactivar el manejador de la
*referencia que trata el evento y llama de nuevo al método
*MOUSE_MOVEMENT que levanta el evento. ¿Se ha llamado al método que
*ha registrado el evento?
*
*7. Eventos estáticos
*
*Crea la clase ZCL_LAB_46_MOBILE_OPERATOR que declara el evento
*estático NEW_CALL que exporta el parámetro EV_PHONE_NUMBER y el
*método ASSIGN_CALL que levanta el evento. A continuación, crea la clase
*ZCL_LAB_47_CUSTOMER_SERVICE que declara e implementa el método
*estático ON_NEW_CALL que registra el evento. En la clase de ejecución
*establece el manejador y llama al método que levanta el evento.
*
*8. ALL INSTANCE
*
*Crea la clase ZCL_LAB_48_ADMINISTRATIVE_DEP que levanta el evento de
*instancia PAYROLL_PAID en el método NOTIFY_EMPLOYEE. En la misma
*clase implementa el método constructor de instancia con un parámetro de
*tipo STRING que actualiza un atributo declarado en la misma clase con el ID
*del empleado. También se debe mantener un atributo llamado LOG que
*será utilizado para mostrar en la consola el ID del empleado para cada
*levantamiento del evento. Continua con la creación de la clase
*ZCL_LAB_49_EMPLOYEE que declara e implementa el método
*ON_PAYROLL_PAID para registrar el evento. Implementa el código para
*que todas las instancias de la clase ADMINISTRATIVE tengan el manejador
*activo para el evento PAYROLL_PAID. En la clase de ejecución instancia tres
*objetos de la clase ADMINISTRATIVE y llama al método que levanta el
*evento.

CLASS zcl_lab_42_screen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA screen_type TYPE string.

    EVENTS touch_screen
      EXPORTING
        VALUE(ev_x) TYPE i
        VALUE(ev_y) TYPE i.

    METHODS:
      constructor IMPORTING iv_type TYPE string,
      element_selected IMPORTING iv_x TYPE i iv_y TYPE i.

ENDCLASS.



CLASS zcl_lab_42_screen IMPLEMENTATION.

  METHOD constructor.
    screen_type = iv_type.
  ENDMETHOD.

  METHOD element_selected.
    RAISE EVENT touch_screen
      EXPORTING
        ev_x = iv_x
        ev_y = iv_y.
  ENDMETHOD.

ENDCLASS.

