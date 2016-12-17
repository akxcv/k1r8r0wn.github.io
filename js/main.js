$(document).ready(function() {
    setInterval('Animate();', 4000);
});

function Animate() {
    var $message = $('.centered .message')
    var length = $message.length - 1;

    $message.each(function(index) {
        if($(this).hasClass('active') && index != length) {
            $(this).removeClass('active').fadeOut(1000).next('.message').addClass('active').fadeIn(1000);
            return false;
        } else if (index == length) {
            $(this).removeClass('active').fadeOut(1000);
            $message.eq(0).addClass('active').fadeIn(1000);
            return false;
        }
    });
};
