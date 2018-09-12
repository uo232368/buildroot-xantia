# Buildroot-xantia
Distribución linux optimizada para realizar un dashboard digital utilizando una **raspberry-pi3**.

## 1.- Recompilar
En el caso de no disponer de una imagen "sdcard.iso" con la distribución previamente compilada, será necesario realizar el siguiente procedimiento.
### 1.1- Descargar el repositorio git
  Mediante la orden `git clone https://github.com/uo232368/buildroot-xantia.git`
### 1.2- Configurar la distribución
  Dentro de la carpeta del repositorio descargado ejecutar `make menuconfig` (puede requerir la instalación de paquetes).
  Una vez dentro, cargar la configuración del fichero `xantia-config` y salir.
### 1.3- (Opcional) BootLogo
Si se desea cambiar el bootlogo original (logo rpi) por uno propio se ha de ejecutar la orden `make linux-menuconfig` y salir del menú de configuración. 
Posteriormente, en la carpeta `output/build/linux-33.../drivers/video/logo` se ha de sustituir el fichero `logo_linux_clut224.ppm` por el personalizado.
  
Si no se posee un logo personalizado se ha de generar de la siguiente forma:
1) Generar un fichero ppm (Photoshop o Gimp) de la resolución deseada (la de la pantalla)
2) Convertir a 224 colores mediante `ppmquant 224 logo_linux_custom.ppm > logo_linux_custom_224.ppm`
3) Convertir el anterior a ascii mediante `pnmnoraw logo_linux_custom_224.ppm > logo_linux_custom_ascii_224.ppm`
  
### 1.4- 

