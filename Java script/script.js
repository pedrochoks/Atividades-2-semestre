
// let nome = "Pedro";
// let idade = 16;

// console.log ("Ola, meu nome e " + nome + ", tenho" + idade + " anos." );

// let mensagem = 'Ola, meu nome é ${nome}';
// // alert(mensagem);

// console.log(typeof mensagem); //string
// console.log(typeof idade); //number

// let profissao;
// console.log(typeof profissao); //undefined

// let endereco = null;
// console.log(typeof endereco); //null

//*ESTRUTURA CONDICIONAL JS

//* IF E ELSE
// let temperatura = 12;

// if(temperatura > 25)
// {
//     console.log("esta calor");
// }
// else
// {
//     console.log("esta frio")
// }

// let nomeUsuario = prompt("Digite seu nome: ");
// alert("Seu nome e: " + nome);\


//* IF / ELSE IF / ELSE
// let nota = parseInt(prompt("Digite a sua nota: "))

// if(nota > 6)
// {
//     console.log("Aprovado");
// }

// else if (nota >= 5)
// {
//     console.log("Esta de recuperacao");
// }

// else 
// {
//     console.log("esta reprovado")
// }

//* IF TERNARIO
// let saldo = 90;

// let podeComprar = saldo >= 100 ? "Compra aprovada" : "Saldo insuficiente" // (?)=se verdadeiro | : = se for falso
// console.log(podeComprar);

//* CONDICIONAL ANINHADA
//* MULTIPLAS VERIFICACOES

let hora = 8;
let diaDaSemana = "terca";

if (hora >= 6 && hora < 12) {
    console.log("Bom dia")
}
else {
    if (hora >= 12 && hora < 18) {
        if (diaDaSemana == "segunda") {
            console.log("Boa tarde! Otima semana!");
        }
        else {
            console.log("Boa tarde!")
        }
    }
    else {
        console.log("Boa Noite");
    }
}

//* SWITCH CASE
let dia = 2;

switch (dia) {
    case 1:
        console.log("Domingo!");
        break;

    case 2:
        console.log("Segunda!");
        break;

    case 3:
        console.log("Terca!");
        break;

    case 4:
        console.log("Quarta!");
        break;

    case 5:
        console.log("Quinta!");
        break;

    case 6:
        console.log("Sexta!");
        break;

    case 7:
        console.log("sabado");
        break;

    default:
        console.log("Dia invalido");
        break;
}