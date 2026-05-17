let linha = 5; //pode ser qualquer valor
let espaco;
let i;
let j;
let k;
let asterisco = 1;

for (i = 0; i < linha ; i++){
    espaco = linha - i;
    for (j = 0; j < espaco; j++){
        process.stdout.write(" ");
    }
    
    for (k = 0; k < asterisco; k++){
        process.stdout.write("*");
    }
    
    asterisco +=2;
    console.log("\n");
}