$(function () {
    $('#textarea').keyup(function(e) {
        var code = e.keyCode || e.which;
        if(code == 13) {
            App.game.perform("send_message", {'message': $('#textarea').val()})
            $('#textarea').val('')
        }
    })
})