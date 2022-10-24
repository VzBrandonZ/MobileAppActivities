package com.example.mydicesbm7tob

import android.os.Bundle
import android.widget.Button
import android.widget.ImageView
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
        val diceImage: ImageView = findViewById(R.id.imageView)
        diceImage.setImageResource(R.drawable.dice_5)
        rollButton.setOnClickListener { rollDice() }
    }
    /**
     * Tira los dados y actualiza la pantalla con el resultado.
     */
    private fun rollDice() {
        // Crea un nuevo objeto Dice con 6 lados y hazlo rodar
        val dice = Dice(6)
        val diceRoll = dice.diceRoll()
        // Encuentra la ImageView en el diseño
        val diceImage: ImageView = findViewById(R.id.imageView)
        // Determine which drawable resource ID to use based on the dice roll
        val drawableResource = when (diceRoll) {
            1 -> R.drawable.dice_1
            2 -> R.drawable.dice_2
            3 -> R.drawable.dice_3
            4 -> R.drawable.dice_4
            5 -> R.drawable.dice_5
            else -> { R.drawable.dice_6 }
        }

        diceImage.setImageResource(drawableResource)
        diceImage.contentDescription = diceRoll.toString()
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
