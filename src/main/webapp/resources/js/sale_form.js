document.getElementById('item-input').onchange=function() {
	setImageFromFile(this, 'item_img')
};

function setImageFromFile(input, expression) {
	if (input.files && input.files[0]) {
		const reader = new FileReader();
		
		reader.onload = function (e) {
			document.getElementById(expression).setAttribute('src', e.target.result.toString());
		}
		reader.readAsDataURL(input.files[0]);
	}
}
//////
document.getElementById('item-input1').onchange=function() {
	setImageFromFile1(this, 'item_img1')
};

function setImageFromFile1(input, expression) {
	if (input.files && input.files[0]) {
		const reader = new FileReader();

		reader.onload = function (e) {
			document.getElementById(expression).setAttribute('src', e.target.result.toString());
		}
		reader.readAsDataURL(input.files[0]);
	}
}
  //
document.getElementById('item-input2').onchange=function() {
	setImageFromFile2(this, 'item_img2')
};

function setImageFromFile2(input, expression) {
	if (input.files && input.files[0]) {
		const reader = new FileReader();

		reader.onload = function (e) {
			document.getElementById(expression).setAttribute('src', e.target.result.toString());
		}
		reader.readAsDataURL(input.files[0]);
	}
}

document.getElementById('item-input3').onchange=function() {
	setImageFromFile3(this, 'item_img3')
};

function setImageFromFile3(input, expression) {
	if (input.files && input.files[0]) {
		const reader = new FileReader();

		reader.onload = function (e) {
			document.getElementById(expression).setAttribute('src', e.target.result.toString());
		}
		reader.readAsDataURL(input.files[0]);
	}
}

document.getElementById('item-input4').onchange=function() {
	setImageFromFile4(this, 'item_img4')
};

function setImageFromFile4(input, expression) {
	if (input.files && input.files[0]) {
		const reader = new FileReader();

		reader.onload = function (e) {
			document.getElementById(expression).setAttribute('src', e.target.result.toString());
		}
		reader.readAsDataURL(input.files[0]);
	}
}