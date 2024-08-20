# Utiliza una imagen base de Python
FROM python:3.9.7

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código de la aplicación al contenedor
COPY src/ .

# Expone el puerto que utilizará la aplicación (ajusta según tu configuración)
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
