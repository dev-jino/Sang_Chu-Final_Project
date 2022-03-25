document.getElementById("nick").onclick = function(){
	document.getElementById("myinfo").classList.toggle('hide');
};

document.getElementById("com_search").onclick = function(){
	document.getElementById("w_search_modal").classList.remove('hide');
};

document.getElementById("search_close").onclick = function(){
	document.getElementById("w_search_modal").classList.add('hide');
};

document.onmouseup = function () {
	var myPopUp = document.getElementById("myinfo");
	var searchPopUp = document.getElementById("w_search_modal");
	
	if (!myPopUp.hasAttribute("hide")) {
		document.getElementById("myinfo").classList.add("hide");
	}
	/*
	if (!searchPopUp.hasAttribute("hide")) {
		document.getElementById("w_search_modal").classList.add("hide");
	}
	*/
};