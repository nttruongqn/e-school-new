$(document).ready(function () {
  $("#three-line").click(function () {
    $(".more-info").toggle();
  });

  $(".banner-slider").slick({
    dots: true,
    arrows: false,
    infinite: true,
    slidesToShow: 1,
    autoplay: true,
  });
});
