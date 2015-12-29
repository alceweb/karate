$(document).ready(function() {
    alert($ ('#celebs tbody tr:even').length + ' elementi contati!');
    $('p').css('color', 'red');
    $('#celebs').addClass('tbl1');
    $('#celebs tr:even').css({
        'background-color': '#0000ff', 'color': '#fff'
    });
    $('#btnMostraTabella').fadeOut();
    $('#celebs tr:odd').css({
        'background-color': 'green', 'color': 'orange'
    });
    $('.heading').css('color', 'blue');
    $('.info evid').css('font-height', 'bold');
        var height1 = $('#div1').css('height');
        var width1 = $('body').css('width');
        alert(height1);
        alert(width1);
        $('#img1').css({ 'height': (height1), 'width': (width1) });
        $('<input id="btnNascondi" type="button" value="Disclaimer" />').insertBefore('#disclaimer');
    $('#btnNascondi').click(function () {
        $('#disclaimer').slideUp('slow', function () {
            alert('Ho manipolato il disclaimer')
        });
        if ($('#disclaimer').is(':visible')) {
            $(this).val('nascondi');
        } else {
            $(this).val('mostra');
        }
    });
    $('#btnDimimg').click(function () {
        $('#celebs').removeClass('tbl1');
        var height1 = $('#div1').css('height');
        $('#img1').css('height', (height1));
        $(this).fadeOut();
    });
    $('#btnDimimg1').click(function () {
        $('#celebs').addClass('tbl1');
        var height1 = $('#div1').css('height');
        $('#img1').css('height', (height1))
        $('#btnDimimg').fadeIn();
    });
    $('<strong>Inizio</strong>').prependTo('#celebs tbody');
    $('<strong>Fine</strong>').appendTo('#celebs tbody');
    $('#btnScrivih2').click(function () {
        $('h2:first').html('Questo <strong>la ho scritta</strong> io');
    });
    $('#btnNascondiTabella').click(function () {
        $('#celebs').fadeOut(1000);
        $(this).fadeOut();
        $('#btnMostraTabella').fadeIn();
    });
    $('#btnMostraTabella').click(function () {
        $('#celebs').fadeIn(1000);
        $(this).fadeOut();
        $('#btnNascondiTabella').fadeIn();
    });
    $('#celebs tbody tr td').click(function () {
        $(this).toggleClass('redClass');
    });
    $('#navigation li').hover(function () {
    });
});
