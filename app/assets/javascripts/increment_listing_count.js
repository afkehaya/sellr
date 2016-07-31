jQuery(document).ready(function(){
    jQuery("#listing_link").on("click", function() {
        console.log($(this));
        $.ajax({
            url: $(this).data('internalid') + "/increment_listing_count",
            type: "GET",
            dataType: "json",
            data: { listing: $(this).data('internalid') },
            complete: function() {},
            success: function(data, textStatus, xhr) {
                $('#sale_count').html(data.new_sale_count);
            },
            error: function() {
                console.log("Ajax error!")
            }
        });
    });
});

