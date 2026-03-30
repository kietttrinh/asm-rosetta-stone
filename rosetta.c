#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <unistd.h>
#include <sys/syscall.h>

// --- 1. GLOBALS & MEMORY SEGMENTS ---
int g_init_var = 0x1337;             
int g_uninit_var;                    
const char* g_str = "Secret_Key!";   

// --- 2. STRUCTS, ALIGNMENT & BITFIELDS ---
struct NetworkHeader {
    unsigned int version : 4;        // Bitfield (4 bits)
    unsigned int ihl : 4;            // Bitfield (4 bits)
    unsigned char tos;               // 1 byte
    unsigned short total_length;     // 2 bytes
    long long timestamp;             // 8 bytes (watch for padding before this)
};

// --- 3. VARIADIC FUNCTIONS ---
// Observe how arguments are passed when the number of args is unknown
int custom_logger(int count, ...) 
{
    va_list args;
    va_start(args, count);
    int sum = 0;
    for (int i = 0; i < count; i++) 
    {
        sum += va_arg(args, int);
    }
    va_end(args);
    return sum;
}

// --- 4. MULTIDIMENSIONAL ARRAYS & VOLATILE ---
int matrix_operations(int rows, int cols) 
{
    int matrix[3][3] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}
    };
    
    // 'volatile' prevents the compiler from optimizing this loop away completely
    volatile int dummy_read = 0; 
    
    for (int i = 0; i < rows; i++) 
    {
        for (int j = 0; j < cols; j++) 
        {
            // Observe the row-major address calculation: base + (i * cols + j) * size
            dummy_read = matrix[i][j];
        }
    }
    return dummy_read;
}

// --- 5. CONTROL FLOW (JUMP TABLES) ---
int handle_state(int state) 
{
    int result = 0;
    switch (state) {
        case 10: result = 0xA; break;
        case 20: result = 0xB; break;
        case 30: result = 0xC; break;
        case 40: result = 0xD; break;
        default: result = 0xF; break;
    }
    return result;
}

int main(int argc, char **argv) 
{
    // Standard variables
    int local_arr[5] = {10, 20, 30, 40, 50};
    struct NetworkHeader header = {4, 5, 0x00, 1024, 0xdeadbeefcafebabe};

    // Bitwise & Bitfield interaction
    header.version = 6;

    // Direct & Variadic Calls
    int var_res = custom_logger(3, 0x11, 0x22, 0x33);
    int mat_res = matrix_operations(3, 3);
    int state_res = handle_state(30);

    // Syscall Interface
    syscall(SYS_write, 1, "Analysis Complete!\n", 19);

    return 0;
}