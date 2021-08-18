extern char volatile *_uart;
extern char put_char(char c);

void print(char const *str)
{
    char c;
    while ((c = *str) != '\0')
    {
        // *((char volatile *)0x10000000) = c;
        // (*_uart) = c;
        put_char(put_char(c));
        str++;
    }
}

char main()
{
    print("Hello, World!\n");
    print("Hi!\n");
    return '$';
}