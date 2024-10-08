package org.example.domain.colecciones;

public class Main {

    public static void main(String[] args) {

        System.out.println("--------------Enteros-----------------");

        //Crear instancia de la clase ListaEnteros
        ListaEnteros enteros = new ListaEnteros();

        //Ingresar números a la lista
        enteros.ingresarNumeros(5);

        //Mostra lista
        enteros.mostrarListaIterando();

        //Ordenar lista de enteros
        enteros.ordenarListaEnteros();

        //Mostrar lista ordenada
        System.out.println("La lista ordenada ascendentemente: ");
        enteros.mostrarLista();

        //Convertir lista en hashSet
        enteros.convertirSet();

        //Mostrar HashList
        enteros.mostrarHashList();

        System.out.println();
        System.out.println("--------------Canedas-----------------");

        //Crear instancia de la clase ListaCadenas
        ListaString nombres = new ListaString();

        //Ingresar nombres a la lista
        nombres.ingresarNombres(5);

        //Mostra lista Original
        System.out.println("Lista original");
        nombres.mostrarLista();

        //Eliminar la posición 3
        nombres.eliminarElemento(3);

        //Mostrar lista despues de eliminar un elemento
        System.out.println("Lista despues de eliminar un elemento");
        nombres.mostrarLista();

        //Buscar un elemento en la lista de nombre
        nombres.buscarElemento();

    }
}
