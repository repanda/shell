console.log('### YTD start');
setTimeout(() => {

var vID=window.location.search.replace('?v=','');
console.log(vID);

var height = 500;
var width = 500;
try {
var element = document.getElementsByTagName('video')[0];
var positionInfo = element.getBoundingClientRect();
var height = positionInfo.height;
var width = positionInfo.width;

}catch(err){
	console.log(err);
}
var str = '<iframe id="iframeD" src="https://www.youtube.com/embed/'+vID+'" width="'+width+'" height="'+height+'">';
var Obj = document.getElementById('movie_player'); //any element to be fully replaced

var tmpObj=document.createElement("div");
tmpObj.innerHTML='<!--THIS DATA SHOULD BE REPLACED-->';
ObjParent=Obj.parentNode; //Okey, element should be parented
ObjParent.replaceChild(tmpObj,Obj); //here we placing our temporary data instead of our target, so we can find it then and replace it into whatever we want to replace to
ObjParent.innerHTML=ObjParent.innerHTML.replace('<div><!--THIS DATA SHOULD BE REPLACED--></div>',str);
    console.log('### YTD dobe');
}, 1000);