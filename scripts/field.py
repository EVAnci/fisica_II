import numpy as np
import matplotlib.pyplot as plt

# Constantes
k = 9e9  # Constante de Coulomb
Q = 1e-6  # Carga en Coulombs (1 μC)

# Crear una malla de puntos en el espacio
x = np.linspace(-2, 2, 20)
y = np.linspace(-2, 2, 20)
X, Y = np.meshgrid(x, y)

# Calcular el campo eléctrico en cada punto
R = np.sqrt(X**2 + Y**2)
Ex = k * Q * X / R**3
Ey = k * Q * Y / R**3

# Graficar el campo vectorial
plt.figure(figsize=(6,6))
plt.quiver(X, Y, Ex, Ey, color='b', pivot='middle')
plt.xlabel("x")
plt.ylabel("y")
plt.title("Campo eléctrico de una carga puntual")
plt.xlim(-2, 2)
plt.ylim(-2, 2)
plt.grid()
plt.savefig('campo_electrico.png')
