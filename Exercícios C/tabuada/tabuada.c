#include <stdio.h>

int main()
{
    int numero, i, resultado, aPartir, ateNumero;
    printf("Digite um número\n");
    scanf("%d", &numero);
    printf("A partir de qual numero voce deseja iniciar?\n");
    scanf("%d", &aPartir);
    printf("Ate qual numero voce deseja multiplicar?\n");
    scanf("%d", &ateNumero);
            for(i=aPartir; i<=ateNumero;i++){
                resultado = numero * i;
                printf("%d X %d = %d\n", numero, i, resultado);
                } 
      if (aPartir > ateNumero){
          printf("\nO numero inicial nao pode ser maior que o final.");
      }
        
    return 0;
}