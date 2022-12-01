#include <stdio.h>
#include <stdlib.h>
void pelda();

int main()
{
    pelda();
    return 0;
}

void pelda() {
    FILE *fp;
    char ch;
    char nev[50];
    printf("File neve (olvas) (50 kar): ");
    scanf("%s", nev);
    fp = fopen(nev, "w");
    printf("Uzenet: ");
    while((ch=getchar()) != '#')
    {
        putc(ch, fp);

    }
    fclose(fp);

    fp = fopen(nev, "r");
    while ((ch=getc(fp)) != EOF) {
        printf("%c",ch);
    }
    fclose(fp);
}