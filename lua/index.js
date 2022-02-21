function greet(name) {
    console.log(`Hello ${name}`);
}

// add two numbers and get the result in an english word\
function add(num1, num2) {
    let result = num1 + num2;
    return num1 + num2;
}

greet('John');
console.log(add(1, 2));


for (let index = 0; index <= 100; index++) {
    console.log(index);
}


var person = {
    name: "Daniel"
}

document.getElementById('name').innerHTML = html`<h1>${person.name}</h1>`;
