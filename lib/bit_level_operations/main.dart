// AND (&): Compara bit a bit, devuelve 1 solo si ambos bits son 1
int x = 5 & 3;  // 1 (0101 & 0011 = 0001)

// OR (|): Compara bit a bit, devuelve 1 si al menos un bit es 1
int y = 5 | 3;  // 7 (0101 | 0011 = 0111)

// XOR (^): Devuelve 1 si los bits son diferentes
int z = 5 ^ 3;  // 6 (0101 ^ 0011 = 0110)

// NOT (~): Invierte todos los bits
int w = ~5;     // Complemento de 5


// Desplazamiento a la izquierda (<<): Multiplica por 2^n
int left = 5 << 1;  // 10 (multiplica por 2)
int left2 = 5 << 2; // 20 (multiplica por 4)

// Desplazamiento a la derecha (>>): Divide por 2^n
int right = 20 >> 1;  // 10 (divide por 2)
int right2 = 20 >> 2; // 5  (divide por 4)

bool isPar(int n) => (n & 1) == 0;  // Par si el último bit es 0

//* Obtener el valor absoluto:
int abs(int x) => (x ^ (x >> 31)) - (x >> 31);

//* Intercambiar valores sin variable temporal:

void swap(int a, int b) {
  a = a ^ b;
  b = a ^ b;
  a = a ^ b;
}

//*  Verificar si es potencia de 2:
bool isPowerOfTwo(int n) => n > 0 && (n & (n - 1)) == 0;


