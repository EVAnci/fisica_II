import numpy as np
import matplotlib.pyplot as plt

# Constantes
k = 9e9  # Constante de Coulomb
Q = 1e-6  # Carga en Coulombs (1 μC)

# Crear una malla de puntos en el espacio
x = np.linspace(-2, 2, 15)
y = np.linspace(-2, 2, 15)
X, Y = np.meshgrid(x, y)

# Calcular distancia desde el origen
R = np.sqrt(X**2 + Y**2)
R[R == 0] = 1e-20  # Evitar división por cero

# Evitar división por cero
R_safe = np.copy(R)
R_safe[R_safe == 0] = 1e-20

# Calcular campo eléctrico
Ex = k * Q * X / R_safe**3
Ey = k * Q * Y / R_safe**3

# Aplicar máscara: solo donde R >= 0.3
mask = R >= 0.5
Ex_masked = np.where(mask, Ex, 0)
Ey_masked = np.where(mask, Ey, 0)
# Ex_masked = -np.where(mask, Ex, 0)
# Ey_masked = -np.where(mask, Ey, 0)

# Graficar el campo vectorial
plt.figure(figsize=(8,8))
plt.quiver(X, Y, Ex_masked, Ey_masked, color='black', pivot='middle', scale=3e5)

# Representar la carga con mayor tamaño
plt.plot(0, 0, 'ro', markersize=60, label='Carga positiva')
# plt.plot(0, 0, 'bo', markersize=60, label='Carga negativa')

plt.xlabel("x [m]", fontsize=12)
plt.ylabel("y [m]", fontsize=12)
plt.title("Campo eléctrico de una carga puntual positiva", fontsize=14)
# plt.title("Campo eléctrico de una carga puntual negativa", fontsize=14)
plt.xlim(-2, 2)
plt.ylim(-2, 2)
plt.grid()
plt.savefig('campo_electrico.png')