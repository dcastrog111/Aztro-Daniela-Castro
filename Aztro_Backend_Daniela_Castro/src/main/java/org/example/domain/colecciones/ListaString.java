package org.example.domain.colecciones;

import java.util.*;

public class ListaString {

    Scanner sc = new Scanner(System.in);

    //Crear lista de string
    List<String> listaNombres = new ArrayList<>();

    //Metodo para ingresar cinco nombres a la lista

    public void ingresarNombres(int cant){
        String nombre;
        for(int i = 0; i < cant; i++){
            System.out.println("Digite el nombre "+i+" de la lista");
            nombre = sc.next();
            listaNombres.add(nombre);
        }
    }

    //Metodo para ingresar n cadenas a la lista

    public void ingresarNNumeros (){
        int continuar = 1;
        String nombre;

        while (continuar == 1){

            System.out.println("Digite el nombre que desea ingresar");
            nombre = sc.next();
            listaNombres.add(nombre);

            System.out.println("¿Desea ingresar otro nombre? si = 1; no = 0");
            continuar = sc.nextInt();
        }
    }

    //Metodo para eliminar el tercer elemento de la lista
    public void eliminarElemento(int posicion){
        listaNombres.remove(posicion);
    }

    //Metodo para eliminar un elemento de la lista
    public void eliminarNElemento(){

        int posicion;

        System.out.println("¿Que elemento de la lista desea eliminar?");
        posicion = sc.nextInt();

        if(posicion > listaNombres.size() || posicion < 0){
            System.out.println("Número ingresado no es una posición de la lista");
        } else {
            listaNombres.remove(posicion);
        }
    }

    //Metodo para mostrar las cadenas de la lista
    public void mostrarLista(){
        System.out.print("La lista de nombres es: ");
        System.out.println(listaNombres);
    }

    //Buscar elemento de la lista
    public void buscarElemento(){

        System.out.println("Indique el elemento que desea buscar");
        String elemento = sc.next();
        int flag = 0;

        for (int i = 0; i < listaNombres.size();i++){
            if(listaNombres.get(i).equals(elemento)){
                System.out.println("El valor buscado está en la posición "+i);
                flag = 1;
            }
        }

        if(flag == 0){
            System.out.println("No se encontró el elemento buscado");
        }

    }

}
