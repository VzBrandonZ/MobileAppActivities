package com.example.mydicesbm7tob

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

/* Mero Cepeda Brando Rafael */

/* codigo estudiado, tomado de la pagina https://developer.android.com/codelabs
*  para entender el manejo de androidStudio
*/
class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val rollButton: Button = findViewById(R.id.button)
        rollButton.setOnClickListener { rollDice() }
    }
    /**
     * Tira los dados y actualiza la pantalla con el resultado.
     */
    private fun rollDice() {
        // Crea un nuevo objeto Dice con 6 lados y hazlo rodar
        val dice = Dice(6)
        val diceRoll = dice.diceRoll()
        // Actualizar la pantalla con la tirada de dados
        val resultTextView: TextView = findViewById(R.id.textView)
        resultTextView.text = diceRoll.toString()
    }
}

//Clase Dado "Dice" en la que se le da la funcion de rodar el dado
class Dice(private val numSides: Int) {
    /*
    * metodo que permite  crear un rango de numeros aleatorios que se encuentre en el rango de numeros
    * de lados y retorne un numero al azar.
    */
    fun diceRoll(): Int {
        return (1..numSides).random()
    }
}