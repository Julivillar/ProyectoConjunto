/**
 * Funcion asincrona para mostrar todos los productos visibles
 * @returns
 */


async function fetchProductsIndexJSON(counter) {
    let products = await fetch(`/api/products/offers`);
    let productsJSON = await products.json();
    return productsJSON;
}

/**
 * llamada a la funcion asincrona
 */



function printProductsIndex() {
    fetchProductsIndexJSON().then(productsJSON => {
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
            price.textContent = product.price + '???';
            aPrice.append(price);

            /* STOCK */
            let stock = document.createElement('p');
            stock.textContent = 'Stock: ' + product.stock;
            stock.className = "stock";

            /* INSERCI??N */
            div.append(aImg, aName, spanStar, aPrice, stock);
            document.querySelector('.textContent').append(div);

        }
    });
}

printProductsIndex();
