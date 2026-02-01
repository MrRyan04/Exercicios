#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// INFORMACOES DE REDE

int main() {
	int octeto1, octeto2, octeto3, octeto4, cidr;
	int classe;
	
	printf("Digite seu ip e CIDR de rede\n\nDigite no seguinte formato:\n\nX.X.X.X/X\n\n");
	
	// ip
	scanf("%d.%d.%d.%d/%d", &octeto1, &octeto2, &octeto3, &octeto4, &cidr);
	
	printf("%d.%d.%d.%d/%d", octeto1, octeto2, octeto3, octeto4, cidr);
	
	// mascara
	int omask1=0, omask2=0, omask3=0, omask4=0;
	
	int rede, host;
	
	switch (octeto1){
		case 10:
			printf("\n\nClasse de rede A");
			classe = 10;
			break;
			
		case 172:
			printf("\n\nClasse de rede B");
			classe = 172;
			break;
			
		case 192:
			printf("\n\nClasse de rede C");
			classe = 192;
			break;
			
			default:
				printf("\nnDigite um valor valido");
			
	} 

//calculo de mascara
//formula: cidrmoc = ( cidr - octeto(s) anterior(res) ) ** elevados[cidrmoc] 

int cidrmoc, cidrfor=0;
int elevados[] = {7, 6, 5, 4, 3, 2, 1, 0};
int i, contaSubRede = 0;

if (cidr <= 8 && cidr > 0){
	
//	cidrmoc = 2 ** elevados[cidr-1];
	cidrmoc = (int) pow(2, elevados[cidr-1]);
	
		for (i=0;i<256;i+=cidrmoc){
			cidrfor+=cidrmoc;
			contaSubRede++;
			
		}
		
			if (cidrfor == 256){
				cidrfor -= cidrmoc;
			}

}
	
else if (cidr > 8 && cidr <=16){
	cidrmoc = cidr - 8;
//	cidrmoc = 2 ** elevados[cidrmoc-1];
	cidrmoc = (int) pow(2, elevados[cidrmoc-1]);
	
	//calculo da mascara
	omask1 = 255;
	
		for (i=0;i<256;i+=cidrmoc){
			cidrfor+=cidrmoc;
			contaSubRede++;
		}
		
			if (cidrfor == 256){
				cidrfor -= cidrmoc;
			}
		
		
	omask2 = cidrfor;
}

else if (cidr > 16 && cidr <= 24){
	cidrmoc = cidr - 16;
//	cidrmoc = 2 ** elevados[cidrmoc-1];
	cidrmoc = (int) pow(2, elevados[cidrmoc-1]);
	omask1 = 255;
	omask2 = 255;

		for (i=0;i<256;i+=cidrmoc){
			cidrfor+=cidrmoc;
			contaSubRede++;
		}
		
			if (cidrfor == 256){
				cidrfor = cidrfor - cidrmoc;
			}
	
	omask3 = cidrfor;
	
}

else if (cidr > 24 && cidr <= 32){
	cidrmoc = cidr - 24;
//	cidrmoc = 2 ** elevados[cidrmoc-1];
	cidrmoc = (int) pow(2, elevados[cidrmoc-1]);
	
	omask1 = 255;
	omask2 = 255;
	omask3 = 255;
	
		for (i=0;i<256;i+=cidrmoc){
			cidrfor+=cidrmoc;
			contaSubRede++;
		}
		
			if (cidrfor == 256){
				cidrfor -= cidrmoc;
			}
			
	omask4 = cidrfor;
}

else {
	printf("\nDigite um cidr valido");
	return 0;
}
	
	
	if (cidr <= 30) {
	    host = pow(2, 32 - cidr) - 2;
	}
	else if (cidr == 31) {
	    host = 2;
	}
	else if (cidr == 32) {
	    host = 1;
	}

	
	rede = (int) pow(2, cidr);
	
	
	
	
	int ipRede, broadcast, temp = cidrmoc;
	
	while ((temp - octeto4) < 0){
		temp = temp + cidrmoc;
	}	
	
	ipRede = temp - cidrmoc;
	broadcast = temp - 1;


system("cls");
	
printf("========================================\n");
printf("        INFORMACOES DA REDE IPv4        \n");
printf("========================================\n\n");

printf("%-22s: %d.%d.%d.%d/%d\n", "IP Informado", octeto1, octeto2, octeto3, octeto4, cidr);
printf("%-22s: %d.%d.%d.%d\n", "Mascara", omask1, omask2, omask3, omask4);
	if (cidr != 31 && cidr != 32){
		printf("%-22s: %d.%d.%d.%d\n", "Endereco de Rede", octeto1, octeto2, octeto3, ipRede);
		printf("%-22s: %d.%d.%d.%d\n", "Broadcast", octeto1, octeto2, octeto3, broadcast);
		}
printf("%-22s: %d\n", "Quantidade de Subredes", contaSubRede);
printf("%-22s: %d\n\n", "Hosts por Rede", host);
printf("%-22s:%02x%02x:%02x%02x\n", "IPv6: 0000:0000:0000:0000:0000:ffff:", octeto1, octeto2, octeto3, octeto4);


	
	return 0;
}

