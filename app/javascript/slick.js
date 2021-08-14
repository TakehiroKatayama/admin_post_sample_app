$(function () {
  $('.slider').slick({
    autoplay: true,
    autoplaySpeed: 4000,
    slidesToShow: 3, //表示するスライドの数
    slidesToScroll: 1, //スクロールで切り替わるスライドの数

    //レスポンシブ対応させたい場合は以下も記述
    responsive: [
      {
        breakpoint: 768, //画面幅768pxで以下のセッティング
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
    ],
  });
});
