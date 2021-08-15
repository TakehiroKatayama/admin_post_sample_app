$(function () {
  $('.slider').slick({
    dots: true,
    slidesToShow: 4, //表示するスライドの数

    responsive: [
      {
        breakpoint: 768, //画面幅768pxで以下のセッティング
        settings: {
          slidesToShow: 2,
        },
      },
    ],
  });
});
