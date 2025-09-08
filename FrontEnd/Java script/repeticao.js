//FOR
//CONTANDO DE 1 ATE N  
// let n = parseInt(prompt("Digite um numero:"));
// for(let i = 1; i <= n; i++)
// {
//     console.log(i);
// }

// //* Fazer uma soma

// let soma = 0;
// let i = 1;

// while(1 <= 10)
// {
//     soma += 1 // soma = soma + 1
//     console.log("O resultado atual e: " + soma);
//     i++;
// }
// console.log("A soma total dos 10 numero e: " + soma);

// * DO / WHILE

// do 
// {
//     console.log("Numero:" + numero);
//     numero++
// }
// while (numero <= 5)

//* FOREACH
let numeros = [1, 2, 3, 4, 5]

numeros.forEach(function(auxiliar){ //! Percorre cada elemento
    console.log("Numero: " + auxiliar)
})

let frutas = ["maca", "banana", "uva", "pera"]

frutas.forEach(function(fruta){
    console.log(fruta);
})

for(let i = 0; i < numeros.length; i++){ 
    console.log("Numero: " + numeros[i])
}