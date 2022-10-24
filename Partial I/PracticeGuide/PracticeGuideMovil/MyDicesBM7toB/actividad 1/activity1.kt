fun main() {
    val myFirstDice = Dice(6)
    println("¡Tus dados de ${myFirstDice.numSides} caras sacaron ${myFirstDice.roll()}!")

    val mySecondDice = Dice(20)
    println("¡Tus dados de ${mySecondDice.numSides} caras sacaron ${mySecondDice.roll()}!")
}

class Dice (val numSides: Int) {

    fun roll(): Int {
        return (1..numSides).random()
    }
}