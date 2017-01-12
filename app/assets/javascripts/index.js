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

function totalSorter(a, b) {
    console.log('test');
    var newa = a.replace(/[^0-9.]/g, "");
    var newb = b.replace(/[^0-9.]/g, "");
    return newa - newb;
};

$(document).ready(function(ready){
	$('.panel-heading span.clickable').click();
	$('.panel div.clickable').click();
    $('.temp-details').click();
 
});

