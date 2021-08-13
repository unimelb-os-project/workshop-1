

void print(char * volatile uart, char const *str)
{
    char c;
    while ((c = *str) != '\0')
    {
        (*uart) = c;
        str++;
    }
}

char main(char * volatile uart)
{
    print(uart, "Hello, World!\n");
    print(uart, "Hi!\n");
    return '$';
}