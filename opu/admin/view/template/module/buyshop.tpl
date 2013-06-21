<?php echo $header; ?>
<div id="content">
    <h1>Dresscode theme configuration options</h1>
    <div id="tabs" class="htabs">
        <a href="#tab-general" style="display: inline;" class="selected">General</a>
        <a href="#tab-productlabels" style="display: inline;" class="">Product labels</a>
        <a href="#tab-social" style="display: inline;" class="">Social widgets</a>
    </div>

    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div id="tab-general" style="display: block;">
            <table class="form">
                <tbody>
                    <tr>
                        <td>Font:<br>
                            <span class="help">Here you can change font for main titles.</span>
                        </td>
                        <td>
                            <select id="bs_general_font" name="bs_general[font]" data-active="<?php echo $bs_general['font']; ?>">
                                <option value="Open Sans">Open Sans</option>
                                <option value="Aclonica">Aclonica</option>
                                <option value="Allan">Allan</option>
                                <option value="Allerta">Allerta</option>
                                <option value="Amaranth">Amaranth</option>
                                <option value="Anton">Anton</option>
                                <option value="Arimo">Arimo</option>
                                <option value="Artifika">Artifika</option>
                                <option value="Arvo">Arvo</option>
                                <option value="Asset">Asset</option>
                                <option value="Astloch">Astloch</option>
                                <option value="Bangers">Bangers</option>
                                <option value="Bentham">Bentham</option>
                                <option value="Bevan">Bevan</option>
                                <option value="Cabin">Cabin</option>
                                <option value="Calligraffitti">Calligraffitti</option>
                                <option value="Candal">Candal</option>
                                <option value="Cantarell">Cantarell</option>
                                <option value="Cardo">Cardo</option>
                                <option value="Coda">Coda</option>
                                <option value="Crushed">Crushed</option>
                                <option value="Cuprum">Cuprum</option>
                                <option value="Damion">Damion</option>
                                <option value="Forum">Forum</option>
                                <option value="Geo">Geo</option>
                                <option value="Gruppo">Gruppo</option>
                                <option value="Inconsolata">Inconsolata</option>
                                <option value="Judson">Judson</option>
                                <option value="Jura">Jura</option>
                                <option value="Kameron">Kameron</option>
                                <option value="Kenia">Kenia</option>
                                <option value="Kranky">Kranky</option>
                                <option value="Kreon">Kreon</option>
                                <option value="Kristi">Kristi</option>
                                <option value="Lekton">Lekton</option>
                                <option value="Limelight">Limelight</option>
                                <option value="Lobster">Lobster</option>
                                <option value="Lora">Lora</option>
                                <option value="Mako">Mako</option>
                                <option value="MedievalSharp">MedievalSharp</option>
                                <option value="Megrim">Megrim</option>
                                <option value="Merriweather">Merriweather</option>
                                <option value="Metrophobic">Metrophobic</option>
                                <option value="Michroma">Michroma</option>
                                <option value="Monofett">Monofett</option>
                                <option value="Neucha">Neucha</option>
                                <option value="Neuton">Neuton</option>
                                <option value="Orbitron">Orbitron</option>
                                <option value="Oswald">Oswald</option>
                                <option value="Pacifico">Pacifico</option>
                                <option value="Philosopher">Philosopher</option>
                                <option value="Play">Play</option>
                                <option value="Puritan">Puritan</option>
                                <option value="Quattrocento">Quattrocento</option>
                                <option value="Radley">Radley</option>
                                <option value="Rokkitt">Rokkitt</option>
                                <option value="Schoolbell">Schoolbell</option>
                                <option value="Slackey">Slackey</option>
                                <option value="Smythe">Smythe</option>
                                <option value="Sunshiney">Sunshiney</option>
                                <option value="Syncopate">Syncopate</option>
                                <option value="Tangerine">Tangerine</option>
                                <option value="Ubuntu">Ubuntu</option>
                                <option value="Ultra">Ultra</option>
                                <option value="Varela">Varela</option>
                                <option value="Vibur">Vibur</option>
                                <option value="Wallpoet">Wallpoet</option>
                                <option value="Zeyada">Zeyada</option>
                            </select>
                            <span id="bs_general_font_preview" style="font-size:30px;line-height: 30px; display:block;padding:8px 0 0 0">Lorem Ipsum Dolor</span>
                        </td>
                    </tr>


                    <!------------------------------------------------------------------------------------------------>
                    <tr>
                        <td>BG Pattern:<br>
                            <span class="help">Here you can choose background pattern or disable it.</span>
                        </td>
                        <td>
                            <div id="bs_general_bgpattern_container">
                                <input type="radio" name="bs_general[bgpattern]" value="bg_pattern_01.png" id="bs_general_bgpattern1">
                                <label for="bs_general_bgpattern1">
                                    Pattern 1
                                    <div style="height:50px;background:url(<?php echo $config_url; ?>catalog/view/bs-images/bg_pattern_01.png)">&nbsp;</div>
                                </label><br>
                                <input type="radio" name="bs_general[bgpattern]" value="bg_pattern_02.png" id="bs_general_bgpattern2">
                                <label for="bs_general_bgpattern2">
                                    Pattern 2
                                    <div style="height:50px;background:url(<?php echo $config_url; ?>catalog/view/bs-images/bg_pattern_02.png)">&nbsp;</div>
                                </label>
                                <input type="radio" name="bs_general[bgpattern]" value="bg_pattern_03.png" id="bs_general_bgpattern3">
                                <label for="bs_general_bgpattern3">
                                    Pattern 3
                                    <div style="height:50px;background:url(<?php echo $config_url; ?>catalog/view/bs-images/bg_pattern_03.png)">&nbsp;</div>
                                </label>
                                <input type="radio" name="bs_general[bgpattern]" value="bg_pattern_04.png" id="bs_general_bgpattern4">
                                <label for="bs_general_bgpattern4">
                                    Pattern 4
                                    <div style="height:50px;background:url(<?php echo $config_url; ?>catalog/view/bs-images/bg_pattern_04.png)">&nbsp;</div>
                                </label>
                                <input type="radio" name="bs_general[bgpattern]" value="bg_pattern_05.png" id="bs_general_bgpattern5">
                                <label for="bs_general_bgpattern5">
                                    Pattern 5
                                    <div style="height:50px;background:url(<?php echo $config_url; ?>catalog/view/bs-images/bg_pattern_05.png)">&nbsp;</div>
                                </label>
                                <input type="radio" name="bs_general[bgpattern]" value="bg_pattern_06.png" id="bs_general_bgpattern6">
                                <label for="bs_general_bgpattern6">
                                    Pattern 6
                                    <div style="height:50px;background:url(<?php echo $config_url; ?>catalog/view/bs-images/bg_pattern_06.png)">&nbsp;</div>
                                </label>
                                <input type="radio" name="bs_general[bgpattern]" value="bg_pattern_07.png" id="bs_general_bgpattern7">
                                <label for="bs_general_bgpattern7">
                                    Pattern 7
                                    <div style="height:50px;background:url(<?php echo $config_url; ?>catalog/view/bs-images/bg_pattern_07.png)">&nbsp;</div>
                                </label>
                                <input type="radio" name="bs_general[bgpattern]" value="bg_pattern_08.png" id="bs_general_bgpattern8">
                                <label for="bs_general_bgpattern8">
                                    Pattern 8
                                    <div style="height:50px;background:url(<?php echo $config_url; ?>catalog/view/bs-images/bg_pattern_08.png)">&nbsp;</div>
                                </label>
                                <br>
                                <input type="radio" name="bs_general[bgpattern]" value="0" id="bs_general_bgpattern0"><label for="bs_general_bgpattern0">Without pattern</label>
                            </div>
                        </td>
                    </tr>


                    <!------------------------------------------------------------------------------------------------>
                    <tr>
                        <td>Theme color:<br>
                            <span class="help">This color will be used for buttons and backgrounds.</span>
                        </td>
                        <td>
                            <input id="bs_general_themecolor" name="bs_general[themecolor]" value="<?php echo $bs_general['themecolor']; ?>" type="text" style="background-color: <?php echo $bs_general['themecolor']; ?>; color: white;">
                        </td>
                    </tr>


                    <!------------------------------------------------------------------------------------------------>
                    <tr>
                        <td>Content bg Color:<br>
                            <span class="help">Content background color.</span>
                        </td>
                        <td>
                            <input id="bs_general_contentbgcolor" name="bs_general[contentbgcolor]" value="<?php echo $bs_general['contentbgcolor']; ?>" type="text" style="background-color: <?php echo $bs_general['contentbgcolor']; ?>; color: white;">
                        </td>
                    </tr>


                    <!------------------------------------------------------------------------------------------------>
                    <tr>
                        <td>Font Color:<br>
                            <span class="help">This color will be used for content font color.</span>
                        </td>
                        <td>
                            <input id="bs_general_fontcolor" name="bs_general[fontcolor]" value="<?php echo $bs_general['fontcolor']; ?>" type="text" style="background-color: <?php echo $bs_general['fontcolor']; ?>; color: white;">
                        </td>
                    </tr>


                    <!------------------------------------------------------------------------------------------------>
                    <tr>
                        <td>Tag cloud:<br>
                        </td>
                        <td>
                            <div id="bs_general_tagstack_container">
                                <input type="radio" name="bs_general[tagstack]" value="disable" id="bs_general_tagstack1">
                                <label for="bs_general_tagstack1">
                                    Disable Animation
                                </label><br>
                                <input type="radio" name="bs_general[tagstack]" value="animate" id="bs_general_tagstack2">
                                <label for="bs_general_tagstack2">
                                    Enable Block Animation
                                </label>
                            </div>
                        </td>
                    </tr>


                    <!------------------------------------------------------------------------------------------------>
                    <tr>
                        <td>Image change onMouseOver in product listing:<br>
                            <span class="help">Show second uploaded image preview on mouseover in product listing.</span>
                        </td>
                        <td>
                            <div id="bs_general_productrollover_container">
                                <input type="radio" name="bs_general[productrollover]" value="enable" id="bs_general_productrollover1">
                                <label for="bs_general_productrollover1">
                                    Enable
                                </label><br>
                                <input type="radio" name="bs_general[productrollover]" value="disable" id="bs_general_productrollover2">
                                <label for="bs_general_productrollover2">
                                    Disable
                                </label>
                            </div>
                        </td>
                    </tr>



                    <!------------------------------------------------------------------------------------------------>
                    <tr>
                        <td>Add to cart "flying" visualization:<br>
                            <span class="help">Allow add to cart "flying".</span>
                        </td>
                        <td>
                            <div id="bs_general_ajaxcart_container">
                                <input type="radio" name="bs_general[ajaxcart]" value="enable" id="bs_general_ajaxcart1">
                                <label for="bs_general_ajaxcart1">
                                    Enable
                                </label><br>
                                <input type="radio" name="bs_general[ajaxcart]" value="disable" id="bs_general_ajaxcart2">
                                <label for="bs_general_ajaxcart2">
                                    Disable
                                </label>
                            </div>
                        </td>
                    </tr>
                    <!------------------------------------------------------------------------------------------------>
                    <tr>
                        <td>Responsibility switching:<br>
                            <span class="help">Allow to turn off/on responsibility of the theme.</span>
                        </td>
                        <td>
                            <div id="bs_general_response_container">
                                <input type="radio" name="bs_general[response]" value="enable" id="bs_general_response1">
                                <label for="bs_general_response1">
                                    Enable responsibility
                                </label><br>
                                <input type="radio" name="bs_general[response]" value="disable" id="bs_general_response2">
                                <label for="bs_general_response2">
                                    Disable responsibility
                                </label>
                            </div>
                        </td>
                    </tr>




                    <!------------------------------------------------------------------------------------------------>
                    <!--
                    <tr>
                        <td>Deal of the day product:<br>
                            <span class="help">Product "id".</span>
                        </td>
                        <td>
                            <input name="bs_general[dealday]" type="text" value="<?php echo $bs_general['dealday']; ?>" />
                        </td>
                    </tr>
                -->
                </tbody></table>
        </div>
        <div id="tab-productlabels" style="display: none;">
            <table class="form">
                <tbody>
                    <tr>
                        <td>Show "Sale" label:<br>
                        </td>
                        <td>
                            <div id="bs_productlabels_sale_container">
                                <input type="radio" name="bs_productlabels[sale]" value="enable" id="bs_productlabels_sale1">
                                <label for="bs_productlabels_sale1">
                                    Enable
                                </label><br>
                                <input type="radio" name="bs_productlabels[sale]" value="disable" id="bs_productlabels_sale2">
                                <label for="bs_productlabels_sale2">
                                    Disable
                                </label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>"Sale" label position:<br>
                        </td>
                        <td>
                            <select id="bs_general_productlabels_saleposition" name="bs_productlabels[saleposition]" data-active="<?php echo $bs_productlabels['saleposition']; ?>">
                                    <option value="top_left">Top Left</option>
                                    <option value="top_right">Top Right</option>
                                    <option value="bottom_left">Bottom Left</option>
                                    <option value="bottom_right">Bottom Right</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Show "Video" label:<br>
                        </td>
                        <td>
                            <div id="bs_productlabels_video_container">
                                <input type="radio" name="bs_productlabels[video]" value="enable" id="bs_productlabels_video1">
                                <label for="bs_productlabels_video1">
                                    Enable
                                </label><br>
                                <input type="radio" name="bs_productlabels[video]" value="disable" id="bs_productlabels_video2">
                                <label for="bs_productlabels_video2">
                                    Disable
                                </label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>"Video" label position:<br>
                        </td>
                        <td>
                            <select id="bs_general_productlabels_videoposition" name="bs_productlabels[videoposition]" data-active="<?php echo $bs_productlabels['videoposition']; ?>">
                                <option value="top_right">Top Right</option>
                                <option value="top_left">Top Left</option>
                                <option value="bottom_left">Bottom Left</option>
                                <option value="bottom_right">Bottom Right</option>
                            </select>
                        </td>
                    </tr>

                </tbody>
            </table>
        </div>
        <div id="tab-social" style="display: none;">
            <table class="form">
                <tbody>


                    <!------------------------------------------------------------------------------------------------>
                    <tr>
                        <td>Twitter account:<br>
                        </td>
                        <td>
                            <input name="bs_social[twitter]" type="text" value="<?php echo $bs_social['twitter']; ?>" />
                        </td>
                    </tr>


                    <!------------------------------------------------------------------------------------------------>
                    <tr>
                        <td>Facebook profile id:<br>
                        </td>
                        <td>
                            <input name="bs_social[facebook]" type="text" value="<?php echo $bs_social['facebook']; ?>" />
                        </td>
                    </tr>

                </tbody></table>
        </div>


        <input type="submit" value="Save" />
    </form>
</div>
<script type="text/javascript"><!--
jQuery('#tabs a').tabs();
jQuery('#languages a').tabs();
jQuery('#vtab-option a').tabs();
//--></script>
<script type="text/javascript"><!--

jQuery(document).ready(function(){
        //set active font
        jQuery("#bs_general_font").val(jQuery("#bs_general_font").data("active")).attr('selected', true);


        //update font preview
        jQuery(function(){
            fontSelect=jQuery("#bs_general_font");
            fontUpdate=function(){
                curFont=jQuery("#bs_general_font").val();
                jQuery("#bs_general_font_preview").css({ fontFamily: curFont });
                jQuery("<link />",{href:"http://fonts.googleapis.com/css?family="+curFont,rel:"stylesheet",type:"text/css"}).appendTo("head");
            }
            fontSelect.change(function(){
                fontUpdate();
            }).keyup(function(){
                        fontUpdate();
                    }).keydown(function(){
                        fontUpdate();
                    });
            jQuery("#bs_general_font").trigger("change");
            fontUpdate();
        })



        //set active background pattern
        jQuery(function() {
            var $radios = jQuery('#bs_general_bgpattern_container input:radio');
            if($radios.is(':checked') === false) {
                $radios.filter('[value="<?php echo $bs_general['bgpattern']; ?>"]').attr('checked', true);
            }
        });


        //set themecolor
        jQuery("#bs_general_themecolor").ColorPicker(
            {
                color: jQuery('#bs_general_themecolor').val(),
                onShow: function (colpkr) {
                    jQuery(colpkr).fadeIn(500);
                    return false;
                },
                onHide: function (colpkr) {
                    jQuery(colpkr).fadeOut(500);
                    return false;
                },
                onChange: function (hsb, hex, rgb) {
                    jQuery('#bs_general_themecolor').css('backgroundColor', '#' + hex);
                    jQuery('#bs_general_themecolor').val('#' + hex);
                }
            }
        );

        //set contentbgcolor
        jQuery("#bs_general_contentbgcolor").ColorPicker(
                {
                    color: jQuery('#bs_general_contentbgcolor').val(),
                    onShow: function (colpkr) {
                        jQuery(colpkr).fadeIn(500);
                        return false;
                    },
                    onHide: function (colpkr) {
                        jQuery(colpkr).fadeOut(500);
                        return false;
                    },
                    onChange: function (hsb, hex, rgb) {
                        jQuery('#bs_general_contentbgcolor').css('backgroundColor', '#' + hex);
                        jQuery('#bs_general_contentbgcolor').val('#' + hex);
                    }
                }
        );


        //set fontcolor
        jQuery("#bs_general_fontcolor").ColorPicker(
                {
                    color: jQuery('#bs_general_fontcolor').val(),
                    onShow: function (colpkr) {
                        jQuery(colpkr).fadeIn(500);
                        return false;
                    },
                    onHide: function (colpkr) {
                        jQuery(colpkr).fadeOut(500);
                        return false;
                    },
                    onChange: function (hsb, hex, rgb) {
                        jQuery('#bs_general_fontcolor').css('backgroundColor', '#' + hex);
                        jQuery('#bs_general_fontcolor').val('#' + hex);
                    }
                }
        );

        //set active tagstack
        jQuery(function() {
            var $radios = jQuery('#bs_general_tagstack_container input:radio');
            if($radios.is(':checked') === false) {
                $radios.filter('[value="<?php echo $bs_general['tagstack']; ?>"]').attr('checked', true);
            }
        });


        //set active productrollover
        jQuery(function() {
            var $radios = jQuery('#bs_general_productrollover_container input:radio');
            if($radios.is(':checked') === false) {
                $radios.filter('[value="<?php echo $bs_general['productrollover']; ?>"]').attr('checked', true);
            }
        });



        //set active ajaxcart
        jQuery(function() {
            var $radios = jQuery('#bs_general_ajaxcart_container input:radio');
            if($radios.is(':checked') === false) {
                $radios.filter('[value="<?php echo $bs_general['ajaxcart']; ?>"]').attr('checked', true);
            }
        });


        //set responsive
        jQuery(function() {
            var $radios = jQuery('#bs_general_response_container input:radio');
            if($radios.is(':checked') === false) {
                $radios.filter('[value="<?php echo $bs_general['response']; ?>"]').attr('checked', true);
            }
        });





    //set active sale label
        jQuery(function() {
            var $radios = jQuery('#bs_productlabels_sale_container input:radio');
            if($radios.is(':checked') === false) {
                $radios.filter('[value="<?php echo $bs_productlabels['sale']; ?>"]').attr('checked', true);
            }
        });

        //set active video label
        jQuery(function() {
            var $radios = jQuery('#bs_productlabels_video_container input:radio');
            if($radios.is(':checked') === false) {
                $radios.filter('[value="<?php echo $bs_productlabels['video']; ?>"]').attr('checked', true);
            }
        });


        //set active sale position
        jQuery("#bs_general_productlabels_saleposition").val(jQuery("#bs_general_productlabels_saleposition").data("active")).attr('selected', true);


        //set active video position
        jQuery("#bs_general_productlabels_videoposition").val(jQuery("#bs_general_productlabels_videoposition").data("active")).attr('selected', true);

    });
//--></script>



<?php echo $footer; ?>