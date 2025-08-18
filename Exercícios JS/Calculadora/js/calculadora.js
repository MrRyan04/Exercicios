const tela = document.querySelector ('#tela');
const telaVisivel = document.querySelector ('.oi');
telaVisivel.value = '0'
let oper = document.querySelectorAll ('.oper');
const pont = document.querySelector ('#ponto');

let sinais = ['+', '-', 'x', '÷', '^', '%']
let base = 0;

function on1() {
    if(base == 0){
        if (sinais.includes(telaVisivel.value) || telaVisivel.value == '0'){
            tela.value += '1';
            telaVisivel.value = '1';
        }else{
            tela.value += '1';
            telaVisivel.value += '1';
        } 
    }else{
        tela.value = '1';
        telaVisivel.value = '1';
    }
    
    for (let i = 0; i<=6; i++){
        oper[i].disabled = false;
        }
        pont.disabled = false;
        base = 0;
}

function on2() {
    
if(base == 0){
    if (sinais.includes(telaVisivel.value) || telaVisivel.value == '0'){
        tela.value += '2';
        telaVisivel.value = '2';
    }else{
        tela.value += '2';
        telaVisivel.value += '2';
    } 
}else{
    tela.value = '2';
    telaVisivel.value = '2';
}
    
    for (let i = 0; i<=6; i++){
        oper[i].disabled = false;
        }
        pont.disabled = false;
        base = 0;
}

function on3() {
    if(base == 0){
        if (sinais.includes(telaVisivel.value) || telaVisivel.value == '0'){
            tela.value += '3';
            telaVisivel.value = '3';
        }else{
            tela.value += '3';
            telaVisivel.value += '3';
        } 
    }else{
        tela.value = '3';
        telaVisivel.value = '3';
    }
    for (let i = 0; i<=6; i++){
        oper[i].disabled = false;
        }
        pont.disabled = false;
        base = 0;
}

function on4() {
    if(base == 0){
        if (sinais.includes(telaVisivel.value) || telaVisivel.value == '0'){
            tela.value += '4';
            telaVisivel.value = '4';
        }else{
            tela.value += '4';
            telaVisivel.value += '4';
        } 
    }else{
        tela.value = '4';
        telaVisivel.value = '4';
    }
    
    for (let i = 0; i<=6; i++){
        oper[i].disabled = false;
        }
        pont.disabled = false;
        base = 0;
}

function on5() {
    if(base == 0){
        if (sinais.includes(telaVisivel.value) || telaVisivel.value == '0'){
            tela.value += '5';
            telaVisivel.value = '5';
        }else{
            tela.value += '5';
            telaVisivel.value += '5';
        } 
    }else{
        tela.value = '5';
        telaVisivel.value = '5';
    }
    for (let i = 0; i<=6; i++){
        oper[i].disabled = false;
        }
        pont.disabled = false;
        base = 0;
}

function on6() {
    if(base == 0){
        if (sinais.includes(telaVisivel.value) || telaVisivel.value == '0'){
            tela.value += '6';
            telaVisivel.value = '6';
        }else{
            tela.value +='6';
            telaVisivel.value += '6';
        } 
    }else{
        tela.value = '6';
        telaVisivel.value = '6';
    }
    
    for (let i = 0; i<=6; i++){
        oper[i].disabled = false;
        }
        pont.disabled = false;
        base = 0;
}

function on7() {
    if(base == 0){
        if (sinais.includes(telaVisivel.value) || telaVisivel.value == '0'){
            tela.value += '7';
            telaVisivel.value = '7';
        }else{
            tela.value += '7';
            telaVisivel.value += '7';
        } 
    }else{
        tela.value = '7';
        telaVisivel.value = '7';
    }
    for (let i = 0; i<=6; i++){
        oper[i].disabled = false;
        }
        pont.disabled = false;
        base = 0;
}

function on8() {
    if(base == 0){
        if (sinais.includes(telaVisivel.value) || telaVisivel.value == '0'){
            tela.value += '8';
            telaVisivel.value = '8';
        }else{
            tela.value += '8';
            telaVisivel.value += '8';
        } 
    }else{
        tela.value = '8';
        telaVisivel.value = '8';
    }
    
    for (let i = 0; i<=6; i++){
        oper[i].disabled = false;
        }
        pont.disabled = false;
        base = 0;
}

function on9() {
    if(base == 0){
        if (sinais.includes(telaVisivel.value)|| telaVisivel.value == '0'){
            tela.value += '9';
            telaVisivel.value = '9';
        }else{
            tela.value += '9';
            telaVisivel.value += '9';
        } 
    }else{
        tela.value = '9';
        telaVisivel.value = '9';
    }
        for (let i = 0; i<=6; i++){
            oper[i].disabled = false;
            }
            pont.disabled = false;
            base = 0;
}

function on0() {
    if(base == 0){
        if (sinais.includes(telaVisivel.value) || telaVisivel.value == '0'){
            tela.value += '0';
            telaVisivel.value = '0';
        }else{
            tela.value  += '0';
            telaVisivel.value += '0';
        } 
    }else{
        tela.value = '0';
        telaVisivel.value = '0';
    }
    for (let i = 0; i<=6; i++){
        oper[i].disabled = false;
        }
        pont.disabled = false;
        base = 0;
}

function onmais() {
    tela.value += '+';
    telaVisivel.value = '+';
    for (let i = 0; i<=6; i++){
    oper[i].disabled = true;
    }
    pont.disabled = true;
    base = 0;
    
}

function onmenos() {
    tela.value += '-';
    telaVisivel.value = '-';
    for (let i = 0; i<=6; i++){
        oper[i].disabled = true;
        }
        pont.disabled = true;
        base = 0;
        
}

function onvzs() {
    tela.value += '*';
    telaVisivel.value = 'x';
    for (let i = 0; i<=6; i++){
        oper[i].disabled = true;
        }
        pont.disabled = true;
        base = 0;
        
}

function ondiv() {
    tela.value += '/';
    telaVisivel.value = '÷';
    oper.disabled = true;
    for (let i = 0; i<=6; i++){
        oper[i].disabled = true;
        }
        pont.disabled = true;
        base = 0;
        
}

function onper(){
    tela.value += '/100*';
    telaVisivel.value = '%';
    oper.disabled = true
    for (let i = 0; i<=6; i++){
        oper[i].disabled = true;
        }
        pont.disabled = true;
        base = 0;
        
}

function onpot(){
    tela.value += '**';
    telaVisivel.value = '^';
    oper.disabled = true
    for (let i = 0; i<=6; i++){
        oper[i].disabled = true
        }
        pont.disabled = true;
        base = 0;
        
}

function ondel() {
    tela.value = '';
    telaVisivel.value = '0';
    for (let i = 0; i<=6; i++){
        oper[i].disabled = true
        }
        pont.disabled = false;

        
}

function onback(){
    if (telaVisivel.value.length == 1){
        telaVisivel.value = '0';
        tela.value = '';
    } else {
        tela.value = tela.value.slice(0, -1)
        telaVisivel.value = telaVisivel.value.slice(0, -1)
        pont.disabled = false;
        }
        base = 0;
}

function onres() {
    let resultado = eval(tela.value);
    tela.value = String(resultado);
    telaVisivel.value = tela.value;
    base = 1;
}

function onponto() {
    if (tela.value == "0"){
        tela.value = '0.';
        telaVisivel.value = '0.';
    }else{
        tela.value += '.';
        telaVisivel.value += '.';
        base = 0;
    } 
    
    pont.disabled = true;
    for (let i = 0; i<=6; i++){
        oper[i].disabled = true;
        }
}

