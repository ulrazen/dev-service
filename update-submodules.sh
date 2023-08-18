#!/bin/bash

# Actualizar el repositorio principal
git pull origin main # Asume que tu rama principal se llama "main"

# Actualizar todos los submódulos a la última versión de sus respectivas ramas principales
git submodule update --remote --merge

# Registrar los cambios en el repositorio principal
git add .
git commit -m "Actualizar todos los submódulos a las últimas versiones"
