
export uniform int width() { return programCount; }

int64 zero = 0;

export void f_f(uniform float RET[], uniform float aFOO[]) {
    uniform float a[programCount];
    for (uniform int i = 0; i < programCount; ++i)
        a[i] = aFOO[i];

    #pragma ignore warning(perf)    
    int g = a[programIndex+zero]; 
    RET[programIndex] = g; 
}

export void result(uniform float RET[]) {
    RET[programIndex] = 1 + programIndex;
}
