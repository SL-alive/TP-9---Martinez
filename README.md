# TP-9---Martinez
TP número 9 de normalización basado en la base de datos del trabajo práctico número 6.

Explicación:
Clientes: sirve para llenar el formulario de los datos del cliente, como su nombre, edad, contáctos, etc.
Productos: lista de productos para cargar y usar.
Facturas: formulario de la fáctura que se hizo.
Items factura: artículos en la fáctura.
Impuestos: tabla para que se añadan los impuestos en la fáctura.

Este modelo sirve para la realización de facturas de distintas compras. Se usa para completar de forma eficiente los datos de clientes, items y listas de distintos artículos.

Las principales entidades son la tabla clientes, la tabla facturas y la tabla de productos.

Se llegó hasta la segunda normalización, ya que se evitan los problemas tanto de la primera normalización (repetir datos), como los de la segunda (dependencias parciales). No llega a la tercera normalización, ya que hay partes del código que dependen fuertemente en otras partes.

El diagrama está junto a los otros archivos del github.
