# Git Commit's - Directrices para confirmar mensajes
Tenemos reglas muy precisas sobre cómo se pueden formatear nuestros mensajes de confirmación de git. Esto conduce a **mensajes más legibles** que son **fáciles de seguir** cuando se mira a través del **historial del proyecto.** Pero también, usamos los mensajes de confirmación de git para generar el registro de cambios en el proyecto.

## Commit: Formato del mensaje de confirmación
¡Cualquier línea del mensaje de confirmación **no puede tener más de 100 caracteres**!
Esto permite que el mensaje sea más fácil de leer en GitHub, así como en varias herramientas de git.

El mensaje de confirmación tenemos que escribirlos en **ingles,** esto es una de las mejores prácticas que podemos tener en nuestros mensajes de confirmación.

Cada mensaje de confirmación consta de un **encabezado,** un **cuerpo** y un **pie de página.**
El **encabezado** tiene como **formato especial** incluir: **tipo** (**módulo**): **asunto**.

Ejemplo:
```
<encabezado>
	<tipo>(<módulo>): <asunto>.
</encabezado>
<línea en blanco>
<cuerpo>
<línea en blanco>
<pie de página>
```
Para la confirmación de mensajes, el **encabezado es obligatorio** mientras que el **cuerpo y pie de página** es opcional.

### Commit: Tipo
Debe ser uno de los siguientes:

* **build:** Cambios que afectan al sistema de compilación o dependencias externas (ámbitos de ejemplo: npm).
* **ci:** Cambios en nuestros archivos de configuración.
* **docs:** Solo cambia la documentación.
* **feat:** Una nueva característica.
* **fix:** Se soluciona un bug.
* **perf:** Un cambio de código que mejora el rendimiento.
* **refactor:** Refactorización del código que no corrige ningún error, ni agrega una nueva característica.
* **style:** Cambios que no afectan al significado del código (espacios en blanco, formato, punto y coma faltante, etc.).
* **test:** Agregando pruebas faltantes, refactorizando pruebas o corregir pruebas existentes; sin cambios en el código de producción.
* **chore:** Actualización de tareas rutinarias, etc., sin cambios en el código de producción.
* **md:** Se utiliza para agregar o actualizar las notas de los archivos Markdown (.md)

### Commit: Módulo
El módulo debe ser el nombre del módulo afectado en la aplicación.

### Commit: Asunto
El asunto contiene una descripción sucinta del cambio:

* use el imperativo, tiempo presente: "cambio" no "cambiado" ni "cambios"
* no pongas en mayúscula la primera letra
* sin punto (.) al final

### Commit: Cuerpo
Al igual que en el **asunto,** use el imperativo, el tiempo presente: "cambio" no "cambiado" ni "cambios". El cuerpo debe incluir la motivación para el cambio y contrastar esto con el comportamiento anterior.

### Commit: Pie de página
El pie de página debe contener cualquier información sobre los cambios realizados.

#### Tomado de: https://github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#commit
Muestras de commit's: https://github.com/angular/angular/commits/master