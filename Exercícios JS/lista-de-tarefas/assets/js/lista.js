let i = 0;
let numeracao = [];
let tarefa = [];


var maine = document.getElementById ('princ');
let bloco1 = document.getElementsByClassName('bloco1')[0];
let bloco2 = document.getElementsByClassName('remocao')[0];

let input = document.getElementById ('adc');
let bot = document.getElementById ('bot');
let bot2 = document.getElementById ('bot2');
input.addEventListener('keypress', function(e){
    if (e.key === 'Enter' && input.value != '') {
        bot.click();
    }
})

function lista(a, b){
        let paragrafo = document.createElement('p');
        let quebra = document.createElement('br');

        paragrafo.textContent = `${numeracao[i]})  ${tarefa[i]}`;

        maine.appendChild(quebra);
        maine.appendChild(paragrafo);
        i++
}

function add(){
    if(input.value != ''){
        let input1 = document.getElementById ('adc').value.toUpperCase();
        tarefa.push(input1);
        numeracao.push(i+1)
        input.value='';
    lista(i, input1);
 }
}

function remove(){
    bloco1.style.display = "none";
    bloco2.style.display = "block";
}

function cancelar(){
    bloco1.style.display = "block";
    bloco2.style.display = "none";
}





/*function deletar(){
    let inputRemover = document.getElementById ('inputRemove').value;
    inputRemover--;
    tarefa.splice(inputRemover, 1);
    numeracao.length = 0;
    //document.querySelectorAll("p").forEach(p => p.remove());
    for(j=0; j < tarefa.length; j++){
        if (numeracao.length < tarefa.length){
            numeracao.push(j+1)
        }
        //let quebra = document.createElement('br');
        
        let paragrafo = document.createElement('p');
        paragrafo.textContent = `${numeracao[j]})  ${tarefa[j]}`;

        //maine.appendChild(quebra);
        maine.appendChild(paragrafo);
        i--;
        //inputRemover.value = '';
    }
}


/*function add() {
   let input1 = document.getElementById ('adc').value.toUpperCase();
   document.getElementById ('adc').value='';

   if (input1 != ''){
        let paragrafo = document.createElement('p');
        let quebra = document.createElement('br');

        paragrafo.textContent = `${ordem})  ${input1}`;

        maine.appendChild(quebra);
        maine.appendChild(paragrafo);
        

        ordem++

  
    }
}*/

