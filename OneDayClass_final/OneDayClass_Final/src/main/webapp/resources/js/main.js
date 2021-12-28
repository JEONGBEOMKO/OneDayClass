function handleFileSelect(){
    var reader = new FileReader();
    document.getElementById("preview").innerHTML = "";
    
    reader.onload=function(event){
        var img = document.createElement("img");
        img.setAttribute("src", event.target.result);
        document.querySelector("div#preview").appendChild(img);
    }
    reader.readAsDataURL(event.target.files[0]);  
}

function handleFileSelect1(){
    var reader = new FileReader();
    document.getElementById("preview1").innerHTML = "";
    
    reader.onload=function(event){
        var img = document.createElement("img");
        img.setAttribute("src", event.target.result);
        document.querySelector("div#preview1").appendChild(img);
    }
    reader.readAsDataURL(event.target.files[0]);  
}

function handleFileSelect2(){
    var reader = new FileReader();
    document.getElementById("preview2").innerHTML = "";
    
    reader.onload=function(event){
        var img = document.createElement("img");
        img.setAttribute("src", event.target.result);
        document.querySelector("div#preview2").appendChild(img);
    }
    reader.readAsDataURL(event.target.files[0]);  
}

function handleFileSelect3(){
    var reader = new FileReader();
    document.getElementById("preview3").innerHTML = "";
    
    reader.onload=function(event){
        var img = document.createElement("img");
        img.setAttribute("src", event.target.result);
        document.querySelector("div#preview3").appendChild(img);
    }
    reader.readAsDataURL(event.target.files[0]);  
}

function handleFileSelect4(){
    var reader = new FileReader();
    document.getElementById("preview_profile").innerHTML = "";
    
    reader.onload=function(event){
        var img = document.createElement("img");
        img.setAttribute("src", event.target.result);
        document.querySelector("div#preview_profile").appendChild(img);
    }
    reader.readAsDataURL(event.target.files[0]);  
}

function resetAll1(){
    document.getElementById("preview1").innerHTML = "";
}

function resetAll2(){
    document.getElementById("preview2").innerHTML = "";
}

function resetAll3(){
    document.getElementById("preview3").innerHTML = "";
}