# 📘 Resumen de Física II

Este repositorio contiene un resumen completo de la materia **Física II**, diseñado para estudiantes de ingeniería. El documento incluye explicaciones teóricas, fórmulas clave y ejemplos prácticos.

---

## 🚀 Compilación del Documento

### 🛠️ Instalación de Dependencias

Para compilar el documento en **Arch Linux**, instala los siguientes paquetes:

```sh
sudo pacman -S texlive texlive-fontsrecommended texlive-langspanish biber
```

Estos paquetes incluyen todas las dependencias necesarias para trabajar con LaTeX.

### 📄 Generar el PDF

1. Sitúate en la raíz del repositorio.
2. Ejecuta el siguiente comando para compilar el documento:

   ```sh
   make
   ```

3. Para limpiar los archivos generados durante la compilación, utiliza:

   ```sh
   make clean
   make clsbib
   ```

   Esto dejará únicamente el documento final en formato PDF.

4. Si deseas explorar otras opciones de compilación, puedes usar:

   ```sh
   make help
   ```

---

## 📑 Índice de Contenidos

El resumen incluye los siguientes temas:

### Unidad 1: Electrostática
- ⚡ Fuerza y campo eléctrico
- 🔋 Energía potencial eléctrica
- 🧮 Capacitores

### Unidad 2: Corriente Continua
- 🔌 Ley de Ohm
- 🔗 Circuitos serie y paralelo
- ⚙️ Energía y potencia eléctrica

### Unidad 3: Electromagnetismo
- 🧲 Magnetismo
- 🌌 Fuerza magnética
- 🌐 Fuentes de campo magnético

### Unidad 4: Vibraciones y Ondas
- 🌊 Propiedades de las ondas y vibraciones
- 📈 Movimiento ondulatorio

### Unidad 5: La Luz y su Naturaleza Dual
- 💡 La historia de la luz
- 🔆 El espectro electromagnético
- 〽️ Los fenómenos ondulatorios aplicados a la luz
- 🪞 Reflexión en espejos
- 👓 Refracción en lentes

### Unidad 6: Fluidos
- 🌫️ Introducción a los fluidos

### Unidad 7: Fluidos en Movimiento
- 🌪️ Dinámica de fluidos

### Unidad 8: Calor y Temperatura
- 🌡️ Termodinámica básica

---

## 📝 Notas Adicionales

- Este resumen está basado en los libros de **Serway** y **Zemansky** (Física para Ciencias e Ingenierías) y adaptado para poder entender la teoría básica detras de los problemas de la asignatura _Física II_ de carreras de ingeniería en la **[Universidad de Mendoza](https://um.edu.ar/)**.
- Si encuentras algún error o tienes sugerencias, no dudes en abrir un _issue_ o enviar un _pull request_.

---

## 📂 Estructura del Proyecto

- **`main.tex`**: Archivo principal del documento.
- **`chapters/`**: Contiene los capítulos organizados por temas.
- **`images/`**: Carpeta con las imágenes utilizadas en el resumen.
- **`styles/`**: Archivos de estilo personalizados para LaTeX.
- **`scripts/`**: Scripts auxiliares para cálculos y visualizaciones.

---

## 🛡️ Licencia

Este proyecto está bajo la licencia **[MIT](LICENSE)**. Siéntete libre de usarlo, modificarlo y compartirlo.

---