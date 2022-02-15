/**
 * llamada a la funcion asincrona
 */
let counter = 0;
let currentCategory = 0;


let categories = document.querySelectorAll('.categoria');

for (let category of categories) {
    category.addEventListener('click', function (event) {
        event.preventDefault();
        document.querySelector('#loadButton').style.display = 'block';
        if (event.target.getAttribute('data-value') != currentCategory) {
            currentCategory = event.target.getAttribute('data-value');
            document.querySelector('.textContent').textContent = '';
            counter = 0;
            fetchProductsJSON(currentCategory).then(productsJSON => {
                for (let product of productsJSON[0]) {
                    //muestra todos los productos visibles y monta la estructura
                    let div = document.createElement('div');
                    let img = document.createElement('img');
                    // Busca y muestra la imagen por defecto
                    for (let i = 0; i < productsJSON[1].length; i++) {
                        if (productsJSON[1][i].product_id === product.id && productsJSON[1][i].default == 1) {
                            let prod_img = productsJSON[1][i];
                            img.src = "/images/" + prod_img.path;
                        }
                    }

                    div.classList.add('flexContainer', 'productContainer');
                    let a = document.createElement('a');
                    a.textContent = 'Nombre: ' + product.name;
                    a.href = `/products/${product.id}`;

                    let price = document.createElement('p');
                    price.textContent = 'Precio: ' + product.price + '€';
                    let stock = document.createElement('p');
                    stock.textContent = 'Stock: ' + product.stock;
                    div.append(img, a, price, stock);
                    document.querySelector('.textContent').append(div);
                }
                counter = counter + 2;
            });
        }
    })
}

document.querySelector('#loadButton').onclick = function () {
    fetchProductsJSON(currentCategory).then(productsJSON => {

        for (let product of productsJSON[0]) {
            //muestra todos los productos visibles y monta la estructura
            let div = document.createElement('div');
            let img = document.createElement('img');
            // Busca y muestra la imagen por defecto
            for (let i = 0; i < productsJSON[1].length; i++) {
                if (productsJSON[1][i].product_id === product.id && productsJSON[1][i].default == 1) {
                    let prod_img = productsJSON[1][i];
                    img.src = "/images/" + prod_img.path;
                }
            }

            div.classList.add('flexContainer', 'productContainer');
            let a = document.createElement('a');
            a.textContent = 'Nombre: ' + product.name;
            a.href = `/products/${product.id}`;
            let price = document.createElement('p');
            price.textContent = 'Precio: ' + product.price + '€';
            let stock = document.createElement('p');
            stock.textContent = 'Stock: ' + product.stock;
            div.append(img, a, price, stock);
            document.querySelector('.textContent').append(div);
        }
        counter = counter + 2;
    })
}


async function fetchProductsJSON(category) {
    console.log(counter);
    let products = await fetch(`/api/products/${category}/${counter}`);
    console.log(products);
    let jsonProducts = await products.json();
    console.log(jsonProducts);
    return jsonProducts;
}
