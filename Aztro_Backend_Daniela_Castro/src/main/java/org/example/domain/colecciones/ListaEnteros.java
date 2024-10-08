package org.example.domain.colecciones;

import java.util.*;

public class ListaEnteros {

    Scanner sc = new Scanner(System.in);

    //Crear lista de enteros
    List<Integer> listaEnteros = new ArrayList<>();

    //Crear HashSet de enteros
    Set<Integer> hashSetEnteros = new HashSet<>();

    //Metodo para ingresar números a la lista
    public void ingresarNumeros(int cant){

        int numero;
        for(int i = 0; i < cant; i++){
            System.out.println("Digite el número "+i+" de la lista");
            numero = sc.nextInt();
            listaEnteros.add(numero);
        }
    }

    //Metodo para ingresar n números a la lista
    public void ingresarNNumeros (){

        int continuar = 1;
        int numero;

        while (continuar == 1){

            System.out.println("Digite el número que desea ingresar");
            numero = sc.nextInt();
            listaEnteros.add(numero);

            System.out.println("¿Desea ingresar otro número? si = 1; no = 0");
            continuar = sc.nextInt();
        }
    }

    //Metodo para mostrar números de la lista

    public void mostrarLista(){
        System.out.print("La lista de enteros es: ");
        System.out.println(listaEnteros);
    }

    public void mostrarListaIterando(){
        System.out.println("La lista de enteros es: ");
        for(Integer i: listaEnteros){
            System.out.println(i);
        }
    }

    //Ordenar de forma ascendente los números de la lista de enteros
    public void ordenarListaEnteros(){

        Comparator<Integer> comparador = Integer::compare;

        listaEnteros.sort(comparador);
    }

    //Convertir una lista en un set
    public void convertirSet(){

        hashSetEnteros.addAll(listaEnteros);
    }

    //Metodo para mostrar números del HashList
    public void mostrarHashList(){
        System.out.print("El HashSet sin números duplicaddos es: ");
        System.out.println(hashSetEnteros);
    }

}
