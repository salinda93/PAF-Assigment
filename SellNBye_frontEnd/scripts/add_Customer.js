$(document).on("click", "#addCustomer", function()
{
    jQuery.ajax({
        url     : 'http://localhost:8080/SellNBye/customers/',
        async   : true,
        dataType: 'json',
        type    : 'POST',
        data    : {
            name: jQuery("#name").val(),
            address: jQuery("#address").val(),
            email: jQuery("#email").val(),
            phoneNo: jQuery("#phoneNo").val(),
            country: jQuery("#country").val()
        }
    }).done(function() {
        alert("add complete");
    }).fail(function(xhr, status, error) {
        alert("error:"+error.toString()+status.toString()+xhr.toString());
    });
});
