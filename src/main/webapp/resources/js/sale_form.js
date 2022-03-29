function setImageFromFile(input, expression) {
	if (input.files && input.files[0]) {
		const reader = new FileReader();
		
		reader.onload = function (e) {
			document.getElementById(expression).setAttribute('src', e.target.result.toString());
		}
		reader.readAsDataURL(input.files[0]);
	}
}

document.getElementById('item-input').onchange=function() {
	setImageFromFile(this, 'item_img')
};

document.getElementById('item-input1').onchange=function() {
	setImageFromFile(this, 'item_img1')
};

document.getElementById('item-input2').onchange=function() {
	setImageFromFile(this, 'item_img2')
};

document.getElementById('item-input3').onchange=function() {
	setImageFromFile(this, 'item_img3')
};

document.getElementById('item-input4').onchange=function() {
	setImageFromFile(this, 'item_img4')
};

document.getElementById('item-input5').onchange=function() {
	setImageFromFile(this, 'item_img5')
};