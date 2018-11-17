# OpenCV-3.4.3
https://www.pyimagesearch.com/2016/10/24/ubuntu-16-04-how-to-install-opencv/

# 0. Actualizar los paquetes
```
sudo apt-get update
sudo apt-get upgrade
```
# 1. Descargar repositorio
```
cd ~
git clone https://github.com/jgarciafon/Instalacion_OpenCV-3.4.3.git
cd Instalacion_OpenCV-3.4.3
```
# 2. Instalar las librerias
```
sudo sh install_OpenCV_dependencies.sh
```
# 3. Descargar OpenCV3
Se descargará la version 3.4.3
```
sh download_OpenCV_source.sh
```
# 4.1 Configura el entorno de python
```
sh setup_python_environmebt.sh
```
Cierra el terminal.
# 4.2 Instala un entorno virtual para python 3.5
```
mkvirtualenv cv -p python3
```
Para comporbar que se ha instalado correctamente, se cierra el terminal y se abre uno nuevo.
```
workon cv
pip install numpy scipy matplotlib scikit-image scikit-learn ipython
```

