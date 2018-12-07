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
# Sin entorno virtual
Instalar pip
```
cd ~
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo rm -rf ~/get-pip.py ~/.cache/pip
```
Instalar paquetes de python para OpenCV
```
sudo pip install numpy scipy matplotlib scikit-image scikit-learn ipython
```
## Configura y compila OpenCV3
Comprueba de que sigues dentro del entorno virtual
```
cd ~/opencv-3.4.3
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=ON \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.4.3/modules \
    -D PYTHON_EXECUTABLE=~/usr/bin/python3 \
    -D BUILD_EXAMPLES=ON ..
```
Se compila
```
make clean
make
```
Tardará aproximadamente 40 minutos en un ordenador promedio o 2 horas en una RP3
```
sudo make install
sudo ldconfig
```
```
cd /usr/local/lib/python3.5/site-packages/
sudo mv cv2.cpython-35m-x86_64-linux-gnu.so cv2.so
```
Ir al punto 7 sin entrar en el entorno virtual
# Con entorno virtual
# 4.1 Configura el entorno de python
```
sh setup_python_environment.sh
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
# 5 Configura y compila OpenCV3
Comprueba de que sigues dentro del entorno virtual
```
cd ~/opencv-3.4.3
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=ON \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.4.3/modules \
    -D PYTHON_EXECUTABLE=~/.virtualenvs/cv/bin/python \
    -D BUILD_EXAMPLES=ON ..
```
Se compila
```
make clean
make
```
Tardará aproximadamente 40 minutos en un ordenador promedio o 2 horas en una RP3
```
sudo make install
sudo ldconfig
```
# 6. Finalizar la instalacion
```
cd /usr/local/lib/python3.5/site-packages/
sudo mv cv2.cpython-35m-x86_64-linux-gnu.so cv2.so
cd ~/.virtualenvs/cv/lib/python3.5/site-packages/
ln -s /usr/local/lib/python3.5/site-packages/cv2.so cv2.so
cd ~
rm -rf opencv-3.4.3 opencv_contrib-3.4.3
```
# 7. Comprobar el funcionamiento
Acceso y salida del entorno virtual
```
# Para entrar en el entorno virtual
workon cv
# Para salir del entorno virtual
deactivate
```
Comprobar version OpenCV3
```
# Dentro del entorno virtual de python
python
import cv2
cv2.__version__
```
Tendria que poner '3.4.3'. Para salir del editor Ctrl+D
## 7.1. Probar el ejemplo en python3
```
cd ~/Instalacion_OpenCV-3.4.3/RedEyeRemover/python
python removeRedEyes.py
```
## 7.2. Probar el ejemplo en C++
```
cd ~/Instalacion_OpenCV-3.4.3/RedEyeRemover/cpp
make removeRedEyes
./removeRedEyes
make clean
```
# 8. Instalar IDE PyCharm
```
sudo apt install snapd snapd-xdg-open
sudo snap install pycharm-community --classic
pycharm-community
```
## 8.1 Abrir proyecto y que se sincronice con el entorno virtual
Al crear un nuevo proyecto hay que elegir 2 cosas.
- La localizacion del proyecto.
- La localizacion del interprete. En este hay que seleccionar un interprete existente con esta ubicacion: '~/.virtualenvs/cv/bin/python3.5' para que se pueda conectar al entorno virtual que se creo en el punto 4.2
