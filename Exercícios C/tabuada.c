#include <stdio.h>

int main()
{
    int numero, i, resultado, aPartir, ateNumero;
    printf("Digite um número\n");
    scanf("%d", &numero);
    printf("A partir de qual numero voce deseja iniciar?\nObs: o numero deve estar entre 0 e 10.\n");
    scanf("%d", &aPartir);
    printf("Ate qual numero voce deseja multiplicar?\n");
    scanf("%d", &ateNumero);
        if (aPartir > 0 && aPartir < 10){
            for(i=aPartir; i<=ateNumero;i++){
                resultado = numero * i;
                printf("%d X %d = %d\n", numero, i, resultado);}
        } else {
            printf("\nNumero invalido");
      }
      
      if (aPartir > ateNumero){
          printf("\nO numero inicial nao pode ser maior que o final.");
      }
        
    return 0;
}