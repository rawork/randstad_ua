(function($) {
    $(function() {

      autoPlayYouTubeModal();

      //FUNCTION TO GET AND AUTO PLAY YOUTUBE VIDEO FROM DATATAG
      function autoPlayYouTubeModal() {
        var trigger = $("body").find('[data-toggle="modal"]');
        trigger.click(function () {
          var height = $(window).height();
          console.log('height', height);
          var theModal = $(this).data("target"),
            videoSRC = $(this).attr("data-theVideo"),
            videoSRCauto = videoSRC + "&autoplay=1";
          $(theModal + ' iframe').attr('src', videoSRCauto);
          $(theModal + ' button.close').click(function () {
            $(theModal + ' iframe').attr('src', videoSRC);
            $(theModal + ' iframe').css('height', height);
          });
        });
      }

//       var $allVideos = $("iframe[src^='//www.youtube.com']"),
//           // The element that is fluid width
//           $fluidEl = $(".video__content");
//       // Figure out and save aspect ratio for each video
//       $allVideos.each(function() {
//         $(this)
//           .data('aspectRatio', this.height / this.width)
//           // and remove the hard coded width/height
//           .removeAttr('height')
//           .removeAttr('width');
//       });
//
//       $('.video__title a').on('click', function(e) {
//         e.preventDefault();
//
//         $(this).parents('.video').toggleClass('active');
//         var newWidth = $fluidEl.width();
//         console.log(newWidth);
//
//         // Resize all videos according to their own aspect ratio
//         $allVideos.each(function() {
//
//           var $el = $(this);
//           $el
//             .width(newWidth)
//             .height(newWidth * $el.data('aspectRatio'));
//
//         });
//       });
//
//       // When the window is resized
//       $(window).resize(function() {
//
//         var newWidth = $fluidEl.width();
//
//         // Resize all videos according to their own aspect ratio
//         $allVideos.each(function() {
//
//           var $el = $(this);
//           $el
//             .width(newWidth)
//             .height(newWidth * $el.data('aspectRatio'));
//
//         });
//
// // Kick off one resize to fix all videos on page load
//       }).resize();

        $(document).on('click', '.news dd>a', function(e){
            e.preventDefault();

            console.log('news click');
            var textBlock = $(this).next();

            if (textBlock.is(':hidden')) {
                //$('.news .text').slideUp(500);
                textBlock.slideDown(500);
            }

        });

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

        $('.winner-other').slick({
            infinite: false,
            dots : false,
            lazyLoad: 'progressive',
            slidesToShow: 4,
            slidesToScroll: 4,
            adaptiveHeight: true,
            prevArrow: '<button type="button" class="slick-prev winner-prev"></button>',
            nextArrow: '<button type="button" class="slick-next winner-next"></button>',
            responsive: [
                {
                    breakpoint: 992,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
                // You can unslick at a given breakpoint now by adding:
                // settings: "unslick"
                // instead of a settings object
            ]
        });

        $('.slider').slick({
            infinite: false,
            dots : true,
            arrows: false,
            autoplay: true,
            autoplaySpeed: 5000,
            lazyLoad: 'progressive',
            slidesToShow: 1,
            slidesToScroll: 1,
            adaptiveHeight: true
        });

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

        var buildListColumns = function(containerName, strategy){
            var num_cols = 1,
                container = $(containerName),
                listItem = 'li',
                listClass = 'sub-list';
            var width = $(window).width();
            if (width >= 320 && width < 600) {
                num_cols = strategy[0];
            }
            if (width >= 600 && width < 992) {
                num_cols = strategy[1];
            }
            if (width >= 992) {
                num_cols = strategy[2];
            }

            //if (num_cols == 1) {
            //    return;
            //}
            container.each(function() {
                var items_per_col = new Array(),
                    items = $(this).find(listItem),
                    min_items_per_col = Math.ceil(items.length / num_cols),
                    difference = items.length - (min_items_per_col * num_cols);
                for (var i = 0; i < num_cols; i++) {
                    if (i < difference) {
                        items_per_col[i] = min_items_per_col + 1;
                    } else {
                        items_per_col[i] = min_items_per_col;
                    }
                }
                for (var i = 0; i < num_cols; i++) {
                    $(this).append($('<ul ></ul>').addClass(listClass));
                    for (var j = 0; j < items_per_col[i]; j++) {
                        var pointer = 0;
                        for (var k = 0; k < i; k++) {
                            pointer += items_per_col[k];
                        }
                        $(this).find('.' + listClass).last().append(items[j + pointer]);
                    }
                }
            });

            $('ul.sub-list:empty').remove();
        };

        $(window).resize(function(){
            buildLists()
        });

        var buildLists = function (){
            buildListColumns('.countries ul.list', [2,2,3]);
        };

        buildLists();

        // Find all YouTube videos
        var $allVideos = $("iframe[src^='https://www.youtube.com']"),

        // The element that is fluid width
            $fluidEl = $(".content");

        // Figure out and save aspect ratio for each video
        $allVideos.each(function() {

            $(this)
                .data('aspectRatio', this.height / this.width)

                // and remove the hard coded width/height
                .removeAttr('height')
                .removeAttr('width');

        });

        // When the window is resized
        // (You'll probably want to debounce this)
        $(window).resize(function() {



            // Resize all videos according to their own aspect ratio
            $allVideos.each(function() {

                var $el = $(this);
                var newWidth = $el.parent().width();


                $el
                    .width(newWidth)
                    .height(newWidth * $el.data('aspectRatio'));
                //.css('margin-bottom', '20px');

            });

            // Kick off one resize to fix all videos on page load
        }).resize();

        console.log(window.location.hash);
        if (window.location.hash) {
            //console.log('do hash');
            $(window.location.hash).modal('show')
        }

      //   var player;
      // // create youtube player
      // function onYouTubePlayerAPIReady() {
      //   player = new YT.Player('videoinvite', {
      //     width: '560',
      //     height: '315',
      //     videoId: 'Qd0o7_W1_mg',
      //     rel: 0,
      //     showinfo: 0,
      //     events: {
      //       onReady: onPlayerReady,
      //       onStateChange: onPlayerStateChange
      //     }
      //   });
      // }
      //
      // // autoplay video
      // function onPlayerReady(event) {
      //   event.target.playVideo();
      // }
      //
      // // when video ends
      // function onPlayerStateChange(event) {
      //   if(event.data === 0) {
      //     $('.video').toggleClass('active')
      //   }
      // }

      // $(document).ready(function() {
      //   var isVideoOpened = Cookies.get('isVideoOpened');
      //   var showInviteForBanner = window.location.href.indexOf("?video=1") > -1;
      //
      //   if (showInviteForBanner || typeof isVideoOpened == "undefined" || isVideoOpened == false) {
      //     $('#invite-link').trigger('click');
      //     $('#videoModal').on('hide.bs.modal', function(e) {
      //
      //       Cookies.set('isVideoOpened', true, {expires: 30});
      //
      //     })
      //   }
      //
      //
      // })

    });

})(jQuery);

