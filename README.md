# PRACTICA 10 : Programación funcional - Funciones de orden Superior

En esta práctica realizaremos una modificación en nuestra práctica anterior, añadiremos programación funcional. 
En primer lugar añadiremos una lista de citas y referencias bibliograficas en formato de la Asociación de Psiclogia Americana (APA)
También realizaremos pruebas sobre esta nueva lista.

Un nuevo punto de esta práctica es el uso de la herramienta Coverall, para el cubrimiento del código.

## Herramientas de Test

En la práctica se implementa usando metodología de desarrollo dirigido por pruebas TDD, la herramienta usada es RSPec version 3.3.0

Para instalar la herramienta rspec se han usado los comandos: 

    $ bundle install rspec
    $ bundle exec rspec --init
   
Para ejecutar los tests se hace un rake, ya que en el Rakefile hay una tarea que llama a la herramienta rspec.
    $ rake

<p align="Center">
	<img src="img/test_ok.jpg" title="Test Rspec" width="380" height="260">
</p>

## Guard

Para ejecutar guard en la práctica sirve simplemente con el comando: 
    $ guard 

Se ha seguido el directorio completo de la práctica.

## Travis

Para la práctica también se ha usado la herramienta Travis.

[![Build Status](https://travis-ci.org/alu0100713213/prct09-LPP.svg?branch=master)](https://travis-ci.org/alu0100713213/prct10-LPP)

## Coveralls

## Autor y Asignatura

Autor: Juan Ignacio Hita Manso
Asignatura: Lenguajes y paradigmas de la programación


