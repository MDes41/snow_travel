$(document).on('click', '.panel-heading span.clickable', function (e) {
    var $this = $(this);
    if (!$this.hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideUp();
        $this.addClass('panel-collapsed');
        $this.parents('.days').removeClass('col-md-12');
        $this.parents('.days').addClass('col-md-3');
        $this.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
    } else {
        $this.parents('.panel').find('.panel-body').slideDown();
        $this.removeClass('panel-collapsed');
        $this.parents('.days').removeClass('col-md-3');
        $this.parents('.days').addClass('col-md-12');
        $this.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});
$(document).on('click', '.panel div.clickable', function (e) {
    var $this = $(this);
    if (!$this.hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideUp();
        $this.addClass('panel-collapsed');
        $this.parents('.days').removeClass('col-md-12');
        $this.parents('.days').addClass('col-md-3');
        $this.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
    } else {
        $this.parents('.panel').find('.panel-body').slideDown();
        $this.removeClass('panel-collapsed');
        $this.parents('.days').removeClass('col-md-3');
        $this.parents('.days').addClass('col-md-12');
        $this.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});


$(document).on('click', '.temp-details', function (e) {
    var $this = $(this);
    $this.parents(".panel").find(".temp-details-table").toggle();
});

// $(document).on('click', '.show-snow', function (snow) {
//     $('tbody tr').hide();
//     $('tbody tr:has(th.'+snow+')').show();
// });

$(document).ready(function(ready){
	$('.panel-heading span.clickable').click();
	$('.panel div.clickable').click();
    $('.temp-details').click();
    $('.show-snow').click();
    $('.table caption').hide();
    $('.table caption.all').show();

$('.show-snow').click(function() {
    $('tbody tr').hide();
    $('tbody tr.snow').show();
    $('tbody tr.next-mountain').show();
    $('.table.week2 caption').hide();
    $('.table.week2 caption.snow').show();
    $('.table.week1 caption').hide();
    $('.table.week1 caption.snow').show();
});

$('.show-weather').click(function() {
    $('tbody tr').hide();
    $('tbody tr.weather').show();
    $('tbody tr.next-mountain').show();
    $('.table.week2 caption').hide();
    $('.table.week2 caption.weather').show();
    $('.table.week1 caption').hide();
    $('.table.week1 caption.weather').show();
});

$('.show-temperature').click(function() {
    $('tbody tr').hide();
    $('tbody tr.temperature').show();
    $('tbody tr.next-mountain').show();
    $('.table.week2 caption').hide();
    $('.table.week2 caption.temperature').show();
    $('.table.week1 caption').hide();
    $('.table.week1 caption.temperature').show();
});

$('.show-wind').click(function() {
    $('tbody tr').hide();
    $('tbody tr.wind').show();
    $('tbody tr.next-mountain').show();
    $('.table.week2 caption').hide();
    $('.table.week2 caption.wind').show();
    $('.table.week1 caption').hide();
    $('.table.week1 caption.wind').show();
});

$('.show-all').click(function() {
    $('tbody tr').show();
    $('.table.week2 caption').hide();
    $('tbody tr.next-mountain').show();
    $('.table.week1 caption').hide();
    $('.table.week1 caption.all').show();
});



function monthSorter(a, b) {
    if (a.month < b.month) return -1;
    if (a.month > b.month) return 1;
    return 0;
};
// $function show(weather){
//     $('tbody tr').hide();   
//     $('tbody tr:has(a.'+weather+')').show();
//     };
});
$(document).on('page:load', ready);