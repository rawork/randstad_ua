function onAddGuest() {
    $('#guests').append($('#guest-template').html());
}

function onRemoveGuest() {
    $(this).parents('.guest-info').remove();
}

$(document).ready(function(){
    $(document).on('click', 'a.add', onAddGuest);
    $(document).on('click', 'a.remove', onRemoveGuest);

    $(document).on('blur', 'form.register input', function(){
        if( !$(this).val() ) {
            $(this).parents('.control-group').addClass('error');
        } else {
            $(this).parents('.control-group').removeClass('error');
        }
    });

    $(document).on('keypress', 'form.register input', function(){
        if( !$(this).val() ) {
            $(this).parents('.control-group').addClass('error');
        } else {
            $(this).parents('.control-group').removeClass('error');
        }
    });

    $('form.register').submit(function(event){
        var i = 0;
        $('form.register input').each(function(){
            if( !$(this).val() ) {
                $(this).parents('.control-group').addClass('error');
                i++;
            } else {
                $(this).parents('.control-group').removeClass('error');
            }
        });
        if (i > 0) {
            alert('Все поля формы являются обязательными. Заполните информацию о себе и ваших гостях.');
            return false;
        }
    });
})