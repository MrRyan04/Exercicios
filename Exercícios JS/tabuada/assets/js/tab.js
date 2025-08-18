function calc() {
    let numero = Number(document.querySelector ('#numero').value);
    let pe = document.querySelector ('#pe');
    let one = 0
    pe.innerHTML = ''
    if (numero == 0) {
        pe.innerHTML = 'O número não pode ser 0'
        pe.style.display = 'block'
    } else if (numero > 0) {
        for (let n = numero; n <= numero*10; n = n + numero){
            one = one + 1
            pe.innerHTML += ` ${numero}×${one} = ${n}<br>`
            pe.style.display = 'block'
        }
    } else { 
        let n = numero
        one = 1
        while (n >= numero*9) { n = n + numero; 
            one = one + 1;
            pe.innerHTML += ` ${numero}×${one} = ${n}<br>`
            pe.style.display = 'block'

        }
    }
}

function apag(){
    let pe = document.querySelector ('#pe');
    document.querySelector ('#numero').value = '';
    pe.innerHTML = ''
    
    

}