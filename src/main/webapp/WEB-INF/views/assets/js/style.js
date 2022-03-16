$(".tab_inner_box").click(function () {
    $(".tab_btn_inner").addClass("hidden");
    $(this).find(".tab_btn_inner").slideToggle(200);


});

var burger = $('.menu-trigger');
var h = 0;

burger.each(function (index) {
    var $this = $(this);


    $this.on('click', function (e) {
        e.preventDefault();

        $(this).toggleClass('active-' + (index + 1));
        if (h == 0) {
           
            $(".snu_m_tab_box").fadeIn(500)
            h++;
        }
        else if (h == 1) {
            $(".snu_m_tab_box").fadeOut(500)
    
            h--;


        }

    })
    if (h == 0) {
        $(".tab_btn_inner").css('display', 'none');

    }

});

$(".snu_side_bar_btn").click(function () {

    $(".snu_side_bar_box").slideToggle(300);


});
$(".snu_tab_menu").hover(function () {
    $(".snu_tab_menu_content").addClass("hidden");
    $(this).find(".snu_tab_menu_content").fadeToggle(300);
});