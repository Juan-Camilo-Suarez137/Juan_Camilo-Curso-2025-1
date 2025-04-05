#include <jni.h>
#include "libcalculadora_JavaCalculadora.h"
/* Header for class libcalculadora_JavaCalculadora */

/*
 * Class:     libcalculadora_JavaCalculadora
 * Method:    sumar
 * Signature: (II)I
 */
JNIEXPORT jint JNICALL Java_libcalculadora_JavaCalculadora_sumar
  (JNIEnv *env, jobject obj, jint num1, jint num2) {
    int numero1;
    int numero2;
    numero1=num1;
    numero2=num2;
    return numero1 + numero2;
}

/*
 * Class:     libcalculadora_JavaCalculadora
 * Method:    restar
 * Signature: (II)I
 */
JNIEXPORT jint JNICALL Java_libcalculadora_JavaCalculadora_restar
  (JNIEnv *env, jobject obj, jint num1, jint num2) {
    int numero1;
    int numero2;
    numero1=num1;
    numero2=num2;
    return numero1 + numero2;
}

/*
 * Class:     libcalculadora_JavaCalculadora
 * Method:    multiplicar
 * Signature: (II)I
 */
JNIEXPORT jint JNICALL Java_libcalculadora_JavaCalculadora_multiplicar
  (JNIEnv *env, jobject obj, jint num1, jint num2) {
    int numero1;
    int numero2;
    numero1=num1;
    numero2=num2;
    return numero1 + numero2;
}

/*
 * Class:     libcalculadora_JavaCalculadora
 * Method:    dividir
 * Signature: (II)F
 */
JNIEXPORT jfloat JNICALL Java_libcalculadora_JavaCalculadora_dividir
  (JNIEnv *env, jobject obj, jint num1, jint num2) {
    float numero1;
    float numero2;
     numero1=num1;
     numero2=num2; 
 if (numero2 == 0) {
        return 0.0f; // Manejo simple de división por cero
    }
    return (jfloat) numero1 / (jfloat) numero2;
}
