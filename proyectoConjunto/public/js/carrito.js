if(localStorage.getItem('carrito') === null){
    let carrito = [];
    localStorage.setItem('carrito', JSON.stringify(carrito));
}

let cookieName = 'cart';

function getCookie(cname) {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for(let i = 0; i <ca.length; i++) {
      let c = ca[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
  }

  if(getCookie(cookieName) === ""){
      document.cookie='cart=a'
      console.log('thing');
  }
