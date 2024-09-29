#include <iostream>
#include <queue>
#include <unordered_map>
#include <vector>

using namespace std;

// Estructura de un nodo del árbol de Huffman
struct Nodo {
    char caracter;
    int frecuencia;
    Nodo* izq;
    Nodo* der;

    Nodo(char c, int f) : caracter(c), frecuencia(f), izq(nullptr), der(nullptr) {}
};

// Comparador para la cola de prioridad (min-heap)
struct comparar {
    bool operator()(Nodo* izq, Nodo* der) {
        return izq->frecuencia > der->frecuencia;
    }
};

// Función para imprimir los códigos de Huffman
void imprimirCodigos(Nodo* raiz, string codigo, unordered_map<char, string>& tablaCodigos) {
    if (!raiz)
        return;

    // Si es una hoja, guarda el carácter y su código
    if (!raiz->izq && !raiz->der) {
        tablaCodigos[raiz->caracter] = codigo;
        cout << raiz->caracter << ": " << codigo << "\n";
    }

    // Recorrer subárbol izquierdo con '0' y derecho con '1'
    imprimirCodigos(raiz->izq, codigo + "0", tablaCodigos);
    imprimirCodigos(raiz->der, codigo + "1", tablaCodigos);
}

// Función para construir el árbol de Huffman
Nodo* construirArbol(unordered_map<char, int>& frecuencias) {
    priority_queue<Nodo*, vector<Nodo*>, comparar> minHeap;

    // Crear un nodo hoja para cada carácter y añadirlo a la cola de prioridad
    for (auto& par : frecuencias) {
        minHeap.push(new Nodo(par.first, par.second));
    }

    // Repetir hasta que solo quede un nodo en la cola (la raíz del árbol)
    while (minHeap.size() > 1) {
        Nodo* izq = minHeap.top(); minHeap.pop();
        Nodo* der = minHeap.top(); minHeap.pop();

        // Crear un nuevo nodo con la suma de las frecuencias
        Nodo* nuevoNodo = new Nodo('\0', izq->frecuencia + der->frecuencia);
        nuevoNodo->izq = izq;
        nuevoNodo->der = der;

        minHeap.push(nuevoNodo);
    }

    return minHeap.top(); // Raíz del árbol de Huffman
}

// Función para calcular la frecuencia de los caracteres
unordered_map<char, int> calcularFrecuencias(const string& texto) {
    unordered_map<char, int> frecuencias;
    for (char c : texto) {
        frecuencias[c]++;
    }
    return frecuencias;
}

// Función para codificar el texto usando los códigos de Huffman
string codificarTexto(const string& texto, unordered_map<char, string>& tablaCodigos) {
    string textoCodificado;
    for (char c : texto) {
        textoCodificado += tablaCodigos[c];
    }
    return textoCodificado;
}

int main() {
    string texto = "huffman";

    // Paso 1: Calcular las frecuencias de los caracteres
    unordered_map<char, int> frecuencias = calcularFrecuencias(texto);

    // Paso 2: Construir el árbol de Huffman
    Nodo* raiz = construirArbol(frecuencias);

    // Paso 3: Generar los códigos de Huffman
    unordered_map<char, string> tablaCodigos;
    cout << "Códigos de Huffman para cada carácter:\n";
    imprimirCodigos(raiz, "", tablaCodigos);

    // Paso 4: Codificar el texto original
    string textoCodificado = codificarTexto(texto, tablaCodigos);
    cout << "\nTexto codificado: " << textoCodificado << "\n";

    return 0;
}
