package com.example.android.marsphotos.network

import com.squareup.moshi.Moshi
import com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory
import retrofit2.Retrofit
import retrofit2.converter.moshi.MoshiConverterFactory
import retrofit2.http.GET

/*class MarsApiService {

}*/
//Defino la url base del servicio web
private const val BASE_URL =
    "https://android-kotlin-fun-mars-server.appspot.com"

//para indicarle a Retrofit que puede usar Moshi para convertir la respuesta JSON en objetos Kotlin.
private val moshi = Moshi.Builder()
    .add(KotlinJsonAdapterFactory())
    .build()

//Pasamos a addConverterFactory el metodo MoshiConverterFactory
// y le pasamos la variable moshi, que  es una instancia de moshi que creamos.
private val retrofit = Retrofit.Builder()
    .addConverterFactory(MoshiConverterFactory.create(moshi))
    .baseUrl(BASE_URL)
    .build()

//Interfaz para obtener la dependencia photos
interface MarsApiService {
    /**
     * Returns a [List] of [MarsPhoto] and this method can be called from a Coroutine.
     * The @GET annotation indicates that the "photos" endpoint will be requested with the GET
     * HTTP method
     */
    @GET("photos")
    suspend fun getPhotos(): List<MarsPhoto>
}

//Creación del Objeto MarsApi usando Singlenton
object MarsApi {
    val retrofitService : MarsApiService by lazy {
        retrofit.create(MarsApiService::class.java)
    }
}