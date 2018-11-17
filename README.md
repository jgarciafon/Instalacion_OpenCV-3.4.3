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
# 6. Finalizar la instalcion
```
cd /usr/local/lib/python3.5/site-packages/
sudo mv cv2.cpython-35m-x86_64-linux-gnu.so cv2.so
cd ~/.virtualenvs/cv/lib/python3.5/site-packages/
ln -s /usr/local/lib/python3.5/site-packages/cv2.so cv2.so
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
# Entrar 
workon cv
# Para salir del entorno virtual
deactivate
```
