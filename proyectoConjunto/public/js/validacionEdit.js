
let form = document.querySelector('.formClass');
let cancelButton = document.querySelector('#botonCancelar');
let showFormButton = document.querySelector('.btnEditar');
showFormButton.onclick = function () {
    form.style.display = 'block';
}
cancelButton.onclick = function (event) {
    event.preventDefault();
    form.style.display = 'none';
}

form.onsubmit = function (event) {
    let correctData = true;
    event.preventDefault()
    if (form.elements['name'].value == false) {
        correctData = false;
        form.querySelector('#errorName').style.display = 'inline';
    } else {
        form.elements['name'].value = removeWhiteSpaces(form.elements['name'].value);
        form.querySelector('#errorName').style.display = 'none';
    }
    if (form.elements['description'].value == false) {
        correctData = false;
        form.querySelector('#errorDescription').style.display = 'inline';
    } else {
        form.elements['description'].value = removeWhiteSpaces(form.elements['description'].value);
        form.querySelector('#errorDescription').style.display = 'none';
    }
    if (isNaN(form.elements['price'].value) || form.elements['price'].value < 0 || !checkDecimals(form.elements[
        'price'].value)) {
        correctData = false;
        form.querySelector('#errorPrice').style.display = 'inline';
    } else {
        form.querySelector('#errorPrice').style.display = 'none';
    }
    if (isNaN(form.elements['discount'].value) || form.elements['discount'].value < 0 || form.elements[
        'discount'].value > 100 || !checkDecimals(form.elements['discount'].value)) {
        correctData = false;
        form.querySelector('#errorDiscount').style.display = 'inline';
    } else {
        form.querySelector('#errorDiscount').style.display = 'none';
    }
    if (isNaN(form.elements['taxes'].value) || form.elements['taxes'].value < 0 || form.elements['taxes']
        .value > 100 || !checkDecimals(form.elements['taxes'].value)) {
        correctData = false;
        form.querySelector('#errorTaxes').style.display = 'inline';
    } else {
        form.querySelector('#errorTaxes').style.display = 'none';
    }
    if (isNaN(form.elements['stock'].value) || form.elements['stock'].value < 0 || form.elements['stock'].value
        .includes('.')) {
        correctData = false;
        form.querySelector('#errorStock').style.display = 'inline';
    } else {
        form.querySelector('#errorStock').style.display = 'none';
    }
    if (correctData === true) {
        asyncUpdate(form).then(productJSON => {
            for (let product of productJSON) {
                form.style.display = 'none';
                document.querySelector('#tituloProducto').textContent = product.name;
                if (product.offer != 1) {
                    let precioFinal = Number(product.price) + (Number(product.price) * (Number(product.tax) / 100));
                    document.querySelector('#precioCalculado').textContent = precioFinal + ' €';
                } else {
                    let precioFinal = Number(product.price) - Number(product.price) * (Number(product.discount) / 100);
                    document.querySelector('#precioCalculado').textContent = precioFinal + ' €';
                }
                if (product.stock <= 5) {
                    document.querySelector('#avisoStock').style.display = 'block'
                    document.querySelector('#avisoStock').textContent = 'Solo quedan ' + product.stock + ' unidades';
                } else {
                    document.querySelector('#avisoStock').style.display = 'none';
                }
                document.querySelector('#descripcion').textContent = product.description;
            }
        });
    }
    correctData = true;
}

function checkDecimals(number) {
    let correctLength = false;
    number = String(number);
    if (number.includes('.') && number.charAt[number.length - 1] != '.') {
        if ((number.split('.')[1].length > 0 && number.split('.')[1].length <= 2)) {
            correctLength = true;
        }
    } else {
        correctLength = true;
    }
    return correctLength;
}

function checkFileExtension(file) {
    let correctExtension = false;
    let validExtensions = /(\.jpg|\.jpeg|\.png|\.webp)$/i;
    if (validExtensions.exec(file) != null) {
        correctExtension = true;
    }
    return correctExtension;
}

function removeWhiteSpaces(str) {
    let filteredStr = [];
    let string = str;
    string = string.split(' ');
    for (let char of string) {
        if (char != '') {
            filteredStr.push(char);
        }
    }
    filteredStr = filteredStr.join(' ');
    return filteredStr;
}

async function asyncUpdate(form) {
    let response = await fetch(form.action, { method: 'post', body: new FormData(form) });
    let productJson = await response.json();
    return productJson;
}
