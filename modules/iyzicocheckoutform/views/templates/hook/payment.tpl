<div class= "row"> 
    <div class="col-xs-12">
        {if (isset($error)) }
        <div class="paiement_block">
            <p class="alert alert-warning">{$error}</p>
        </div>
        {else}
        {if ($form_class == 'popup')}
        <div id="iyzipay-checkout-form"  class="popup">{$response nofilter}</div>  
        {else}
        <div id="iyzipay-checkout-form" class="responsive" >{$response nofilter}</div>  
        {/if}
        {/if}
        <p class="alert alert-warning" id="terms-error">{$error_terms}</p>
        {if (isset($currency_error) && $currency_error != '')}
        <p class="alert alert-warning">{$currency_error}</p> 
        {/if}
    </div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
{literal}
<script>
    $(document).ready(function () {
	$( "#checkout-payment-step > h1" ).click(function() {
	$("#js-delivery").submit();
	$('#iyzipay-checkout-form').hide();
	$('#checkout-payment-step > div').hide();
	
});
	
	
	
        $('#iyzipay-checkout-form').hide();
        $("input[name='payment-option']").click(function () {
            $("button[class='btn btn-primary center-block']").show();
        });
        $("input[data-module-name='iyzicocheckoutform']").click(function () {
            $("button[class='btn btn-primary center-block']").hide();
        });
        $("input[id='conditions_to_approve[terms-and-conditions]']").change(function () {
            if (this.checked) {
                $('#iyzipay-checkout-form').show();
                $('#terms-error').hide();
            } else {
                $('#iyzipay-checkout-form').hide();
                $('#terms-error').show();
            }
        });
    });
</script>
{/literal}
