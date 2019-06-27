var conexion=new WebSocket("ws://localhost:9090");
conexion.onopen=function(){
    console.log("conexion abierta");
}
conexion.onerror=function(){
    console.log("error");
} 

conexion.onmessage=function(r){
    var o=JSON.parse(r.data);
    document.getElementById("respuesta").innerHTML=o.msg.data;
}
var b=document.getElementById("bEnviar");
b.onclick=function(){
    var m=document.getElementById("mensaje");
    conexion.send(m.value);
    var p=document.createElement("p");
    p.innerHTML=m.value;
    document.getElementById("mensajesEnviados").appendChild(p);
    m.value="";
    console.log("pulse");

}