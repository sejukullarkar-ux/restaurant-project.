function addToCart(name, price){

    let cart =
    JSON.parse(localStorage.getItem("cart"))
    || [];

    let item = cart.find(
        product => product.name === name
    );

    if(item){
        item.quantity++;
    }else{
        cart.push({
            name:name,
            price:price,
            quantity:1
        });
    }

    localStorage.setItem(
        "cart",
        JSON.stringify(cart)
    );

    alert(name + " added successfully");
}