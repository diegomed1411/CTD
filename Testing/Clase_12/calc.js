function suma(a,b){
    return a+b;
}

function resta(a,b){
    return a-b;
}

function multiplicacion(a,b){
    return a*b;
}

function division(a,b){
    if(b == 0){
        return "error"
    }else if(typeof(a) !== "number" || typeof(b) !== "number"){
        return "berenjena"
    } else{
        return a/b;
    }
}

module.exports = {suma, resta, multiplicacion, division};
