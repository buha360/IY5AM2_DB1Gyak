#include <stdio.h>
#include <stdlib.h>
void pelda();

int main()
{
    pelda();
    return 0;
}

void pelda() {
    FILE *fp1, *fp2;

    char ch;
    char nev[50];
    printf("File neve (olvas) (50 kar): ");
    scanf("%s", nev);
    fp1 = fopen(nev, "r");

    if(!fp1) {
        printf("Hiba!");
        exit(0);
    }

    printf("File név (ír) (50 karakter): ");
    scanf("%s", nev);
    fp2 = fopen(nev, "w");
    while ((ch=getc(fp1)) != EOF) {
        fputc(ch, fp2);
    }
    printf("Done.");
    fclose(fp1);
    fclose(fp2);
}