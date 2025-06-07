#include <jni.h>
#include "Main.h"
JNIEXPORT void JNICALL Java_Main_square
(JNIEnv *env, jobject obj, jint i){
    return  i*i;
}