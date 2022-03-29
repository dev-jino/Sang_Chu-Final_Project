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

function checkSaleForm() {
	var title = document.getElementById('sale_form_title');
	if (title.value == '') {
		alert('제목을 입력해주세요.');
		return false;
	}
	
	var category = document.getElementById('sale_form_category1');
	if (category.value == '') {
		alert('카테고리를 선택해주세요.');
		return false;
	}
	
	var category1 = document.getElementById('sale_form_category2');
	if (category1.value == '') {
		alert('하위 카테고리를 선택해주세요.');
		return false;
	}

	var category2 = document.getElementById('sale_form_price');
	if (category2.value == '') {
		alert('가격을 입력해주세요.');
		return false;
	}
	
	var content = document.getElementById('sale_form_content');
	if (content.value == '') {
		alert('내용을 입력해주세요.');
		return false;
	}
	
	return true;
}