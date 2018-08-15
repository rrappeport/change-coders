
function subscribeForm() {
$(document).ready(function() {

    var regex = new RegExp(
        '^(([^<>()[\\]\\\\.,;:\\s@\\"]+(\\.[^<>()[\\]\\\\.,;:\\s@\\"]+)*)|' +
        '(\\".+\\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])' +
        '|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$'
    );

    $('.email input').on('keyup', function(e) {
        $(this).parent().toggleClass('success', regex.test($(this).val()));
    });

});
}
export { subscribeForm };
