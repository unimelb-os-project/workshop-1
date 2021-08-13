extern long _uart;

void test(char volatile *uart1)
{
    long num = (long)&_uart;
    while (num > 0)
    {
        (*uart1) =  '0' + num % 10;
        num /= 10;  
    }
}

void print(char volatile *uart1, char const *str)
{
    // char volatile * uart = (char * volatile)_uart;
    char c;
    while ((c = *str) != '\0')
    {
        // (*uart) = c;
        (*uart1) = c;
        str++;
    }
}

char main(char volatile *uart)
{
    test(uart);
    print(uart, "\n");
    print(uart, "Hello, World!\n");
    print(uart, "Hi!\n");
    return '$';
}