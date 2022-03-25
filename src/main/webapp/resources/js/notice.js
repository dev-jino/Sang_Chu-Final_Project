  function ds(){
        document.getElementById("answer").classList.toggle('hide');
    }

    $('#wrap').onclick(function(e){
        if( !$('#questions').has(e.target).length ) $('#questions').hide();
    });
