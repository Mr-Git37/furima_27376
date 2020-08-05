$(function(){
  console.log("a")
  $('#item_price').change(function(){
    console.log("b")
    var s = $(this).val();
        var result = s / 10;
        var profit = s - result;
        console.log(s)
    $('#add-tax-price').text(result);
    $('#profit').text(profit);
    console.log(profit)
  });
});

