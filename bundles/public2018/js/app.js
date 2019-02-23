(function($) {
    $(function() {

        $(document).on('click', 'a.top', function(e){
            e.preventDefault();

            $.scrollTo('.header', 1000);
        });

        $(document).on('click', '.attention a', function(e){
            e.preventDefault();

            $('.attention').hide();
            $($(this).attr('href')).fadeIn(500);
        });

        $(document).on('click', '.news .text span a', function(e) {
            e.preventDefault();

            $(this).parents('.text').slideUp(500);
        });

        $('.btn-archive').bind('click', function(e) {
            e.preventDefault();

            $(this).hide();
            $('.news .archive').show();
        })


        $(document).on('click', '.menu-icon', function(e){
            e.preventDefault();

            if ($('#mobile-menu').css('right') == '-260px') {
                $('body').css('position', 'relative')
                    .animate({
                        left: '-260px'
                    }, 200);

                $('#mobile-menu').animate({
                    right: '0px'
                }, 200)
            } else {
                $('body')
                    .animate({
                        left: 'auto'
                    }, 200)
                    .css('position', 'static');

                $('#mobile-menu').animate({
                    right: '-260px'
                }, 200)
            }
        });

        console.log(window.location.hash);
        if (window.location.hash) {
            //console.log('do hash');
            $(window.location.hash).modal('show')
        }

    });

})(jQuery);

