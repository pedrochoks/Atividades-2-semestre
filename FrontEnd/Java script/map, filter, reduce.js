// //! FILTER
// //? FILTRAR NUMEROS

// const numbers = [1, 2, 3, 4, 5, 6]

// const maioresQDois = numbers.filter(numbers => numbers > 2); //! => Serve para comparar

// console.log(maioresQDois);

// //* Filtrar nomes
// let nomes = ["Ana", "Bruno", "Carlos", "Eva", "Fernanda"];

// let nomesLongos = nomes.filter(nomes => nomes.length > 5);
// console.log(nomesLongos);

// //*FILTRAR NUMEROS PARES
// let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

// let pares = numeros.filter(numero => numero % 2 === 0)
// console.log(pares);

//* FILTRAR UM OBJETO

// let pessoas = [
//     {nome: "Lucas", idade: 17},
//     {nome: "Mariana", idade: 22},
//     {nome: "Ana Catarina", idade: 15},
//     {nome: "Juliana", idade: 30}
// ]

// let adultos = pessoas.filter(pessoa => pessoa.idade >= 18)
// console.log(adultos);

//! FIND
//? Retorna o primeiro elemento da lista corresponde a condicao

//*Procurar um produto pelo preco
//const produtos = [
// {id: 1, nome: "Teclado", preco: 100},
//  {id: 2, nome: "Mouse", preco: 50},
//{id: 3, nome: "Monitor", preco: 700}

//]

//const produtoCaro = produtos.find(produto => produto.preco > 600)
//console.log(produtoCaro)

//*Encontrar o primeiro numero maior que dez

// let numeros = [5, 8, 12, 20, 3, 15]

// let encontrado = numeros.find(numero => numero > 10)
// console.log(encontrado);

//*Buscar por um nome pela primeira letra
// let nomes = ["Ana", "Bruno", "Carlos", "Eva", "Catia"]

// let nomeEncontrado = nomes.find(nome => nome.startsWith("C") );
// console.log(nomeEncontrado);

//!MAP
// const numeros = [1, 2, 3, 4, 5]

// const numerosDobrados = numero.map(numero => numero* 2)
// console.log(numerosDobrados);

//Filtrando pessoas

// let pessoas = [
//     {nome: "Lucas", idade: 17},
//     {nome: "Mariana", idade: 22},
//     {nome: "Ana Catarina", idade: 15},
//     {nome: "Juliana", idade: 30}
// ]

// let nomes = pessoas.map(pessoa => pessoa.nome)
// console.log(nomes);

// let mensagem = pessoas.map(pessoa =>
//     '${pessoa.nome} tem ${pessoa.idade} anos.'
//     // pessoa.nome + "tem" + pessoa.idade + "anos"
// )

// console.log(mensagem);

//*Deixar os nomes em maisculo e adicionar um sufixo
// const nomes = ["ana", "bruno", "carla"]

// const nomesMaisculo = nomes.map(nome => "Colaborador: " + nome.toUpperCase())
// console.log(nomesMaisculo);

// //! REDUCE
// //? Reduz um array a um unico valor

// //* Somar todos os numeros do array
// const numeros = [1, 2, 3, 4, 5]

// const soma = numeros.reduce((acumulador, numero) => acumulador + numero, 0)
// console.log(soma);

//* Verificar o maior numero de um array
const numeros = [10, 5, 8, 20, 3]

const maiorNumero = numeros.reduce((max, numero) => {
    if (numero >= max) {
        return numero;
    }
    else {
        return max;
    }
}, numeros[0]
)
console.log(maiorNumero)