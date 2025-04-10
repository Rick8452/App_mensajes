🌡️ Monitor de Temperatura y Humedad con Notificaciones en Tiempo Real

Este proyecto consiste en el desarrollo de una aplicación móvil integrada con Firebase que recibe y muestra datos de temperatura y humedad en tiempo real, capturados por un controlador físico programado en Arduino (C++). La app está diseñada para notificar al usuario cuando los valores superan ciertos límites, facilitando el monitoreo de condiciones ambientales desde cualquier lugar.

La solución es ideal para escenarios como agricultura, monitoreo en invernaderos, almacenamiento de alimentos, laboratorios, o cualquier entorno donde los cambios de temperatura y humedad sean críticos.

🚀 ¿Cómo funciona?
Un Arduino equipado con sensores de temperatura y humedad (como DHT11 o DHT22) captura los datos del ambiente.

El microcontrolador, mediante código en C++, envía los datos a Firebase Realtime Database.

La app móvil desarrollada en Flutter se conecta a Firebase para obtener los datos en tiempo real.

Si se detectan valores fuera de los rangos establecidos, la app envía una notificación push al usuario usando Firebase Cloud Messaging (FCM).

La app también permite visualizar los valores actuales directamente en pantalla con una interfaz amigable.

🧰 Tecnologías utilizadas
Arduino (C++)

Firebase Realtime Database

Firebase Cloud Messaging (FCM)

Flutter y C++

Sensor DHT11 / DHT22

ESP8266 / ESP32 (si aplica como conexión Wi-Fi)

✅ Funcionalidades principales
Lectura de temperatura y humedad en tiempo real.

Envío de notificaciones push ante valores críticos.

Visualización en la app con UI intuitiva.

Comunicación eficiente entre hardware y software.
