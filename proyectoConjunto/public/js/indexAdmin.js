/**
 * Funcion asincrona para mostrar todos los productos visibles
 * @returns
 */


async function fetchProductsIndexJSON(counter) {
    let products = await fetch(`/api/products/${counter}`);
    console.log(products);
    let productsJSON = await products.json();
    console.log(productsJSON);
    return productsJSON;
}
/**
 * llamada a la funcion asincrona
 */

// counter = 0;
// currentCategory = 0;


if (currentCategory === 0) {
    console.log(currentCategory + "la cat");
    fetchProductsIndexJSON(counter).then(productsJSON => {
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
            /* IMAGEN */
            let aImg = document.createElement('a');
            aImg.href = `/products/${product.id}`;
            aImg.append(img);

            /* NOMBRE PRODUCTO */
            let aName = document.createElement('a');
            aName.href = `/products/${product.id}`;

            let pName = document.createElement('p');
            pName.className = "nombreProducto";
            pName.textContent = product.name;
            aName.append(pName);

            /* ESTRELLITAS */
            let spanStar = document.createElement('span');
            spanStar.className = "rating";
            spanStar.innerHTML = '<span class="ratingYellow">&#9733;&#9733;&#9733;&#9733;</span>&#9733;'

            // let category = document.createElement('p');
            // category.textContent = 'Categoria ' + product.category.name;
            /* PRECIO */
            let aPrice = document.createElement('a');
            aPrice.href = `/products/${product.id}`;
            aPrice.className = "precio";
            let price = document.createElement('p');
            price.textContent = product.price + '€';
            aPrice.append(price);

            /* STOCK */
            let stock = document.createElement('p');
            stock.textContent = 'Stock: ' + product.stock;
            stock.className = "stock";

            /* INSERCIÓN */
            div.append(aImg, aName, spanStar, aPrice, stock);
            document.querySelector('.textContent').append(div);
        }
        counter = counter + 10;

    })

} else {
    console.log(currentCategory + "la cat");
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
            /* IMAGEN */
            let aImg = document.createElement('a');
            aImg.href = `/products/${product.id}`;
            aImg.append(img);

            /* NOMBRE PRODUCTO */
            let aName = document.createElement('a');
            aName.href = `/products/${product.id}`;

            let pName = document.createElement('p');
            pName.className = "nombreProducto";
            pName.textContent = product.name;
            aName.append(pName);

            /* ESTRELLITAS */
            let spanStar = document.createElement('span');
            spanStar.className = "rating";
            spanStar.innerHTML = '<span class="ratingYellow">&#9733;&#9733;&#9733;&#9733;</span>&#9733;'

            // let category = document.createElement('p');
            // category.textContent = 'Categoria ' + product.category.name;
            /* PRECIO */
            let aPrice = document.createElement('a');
            aPrice.href = `/products/${product.id}`;
            aPrice.className = "precio";
            let price = document.createElement('p');
            price.textContent = product.price + '€';
            aPrice.append(price);

            /* STOCK */
            let stock = document.createElement('p');
            stock.textContent = 'Stock: ' + product.stock;
            stock.className = "stock";

            /* INSERCIÓN */
            div.append(aImg, aName, spanStar, aPrice, stock);
            document.querySelector('.textContent').append(div);
        }
        counter = counter + 2;
    })
}


document.querySelector('#loadButton').onclick = function () {

    if (currentCategory === 0) {
        fetchProductsIndexJSON(counter).then(productsJSON => {
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
                /* IMAGEN */
                let aImg = document.createElement('a');
                aImg.href = `/products/${product.id}`;
                aImg.append(img);

                /* NOMBRE PRODUCTO */
                let aName = document.createElement('a');
                aName.href = `/products/${product.id}`;

                let pName = document.createElement('p');
                pName.className = "nombreProducto";
                pName.textContent = product.name;
                aName.append(pName);

                /* ESTRELLITAS */
                let spanStar = document.createElement('span');
                spanStar.className = "rating";
                spanStar.innerHTML = '<span class="ratingYellow">&#9733;&#9733;&#9733;&#9733;</span>&#9733;'

                // let category = document.createElement('p');
                // category.textContent = 'Categoria ' + product.category.name;
                /* PRECIO */
                let aPrice = document.createElement('a');
                aPrice.href = `/products/${product.id}`;
                aPrice.className = "precio";
                let price = document.createElement('p');
                price.textContent = product.price + '€';
                aPrice.append(price);

                /* STOCK */
                let stock = document.createElement('p');
                stock.textContent = 'Stock: ' + product.stock;
                stock.className = "stock";

                /* INSERCIÓN */
                div.append(aImg, aName, spanStar, aPrice, stock);
                document.querySelector('.textContent').append(div);

            }
            counter = counter + 10;
        })
    } else {

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
                /* IMAGEN */
                let aImg = document.createElement('a');
                aImg.href = `/products/${product.id}`;
                aImg.append(img);

                /* NOMBRE PRODUCTO */
                let aName = document.createElement('a');
                aName.href = `/products/${product.id}`;

                let pName = document.createElement('p');
                pName.className = "nombreProducto";
                pName.textContent = product.name;
                aName.append(pName);

                /* ESTRELLITAS */
                let spanStar = document.createElement('span');
                spanStar.className = "rating";
                spanStar.innerHTML = '<span class="ratingYellow">&#9733;&#9733;&#9733;&#9733;</span>&#9733;'

                // let category = document.createElement('p');
                // category.textContent = 'Categoria ' + product.category.name;
                /* PRECIO */
                let aPrice = document.createElement('a');
                aPrice.href = `/products/${product.id}`;
                aPrice.className = "precio";
                let price = document.createElement('p');
                price.textContent = product.price + '€';
                aPrice.append(price);

                /* STOCK */
                let stock = document.createElement('p');
                stock.textContent = 'Stock: ' + product.stock;
                stock.className = "stock";

                /* INSERCIÓN */
                div.append(aImg, aName, spanStar, aPrice, stock);
                document.querySelector('.textContent').append(div);
            }
            counter = counter + 2;
        })
    }
}

async function fetchProductsJSON(category) {
    console.log(counter);

    let products = await fetch(`/api/products/${category}/${counter}`);
    console.log(products);
    let jsonProducts = await products.json();
    console.log(jsonProducts);
    return jsonProducts;
}





/* let categories = document.querySelectorAll('.categoria');

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
                    // let category = document.createElement('p');
                    // category.textContent = 'Categoria ' + product.category.name;
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
} */
