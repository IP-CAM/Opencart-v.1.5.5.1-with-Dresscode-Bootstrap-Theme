</div>
<div class="container">
    <div id="footer_higher">
        <div id="footer_higher_content">
            <div class="eight columns alpha">
                <?php echo $content_footer; ?>
                <?php include('footer_contact.tpl'); ?>
            </div>
            <div class="eight columns">
                <?php include('twitter.tpl'); ?>
                <?php include('facebook.tpl'); ?>
            </div>
        </div>
    </div>
</div>

<div class="footer_bg_color">
<div id="footer_container_w">
    <div class="container">
        <div class="sixteen columns">
            <div id="footer_button" class="footer_button_down" title="see more"></div>
        </div>
    </div>
</div>



<div id="back-top"><a href="#top"></a></div>

<div id="footer">
    <div class="container">

        <?php if ($informations) { ?>
            <div class="four columns footer_information alpha">
                <h3><?php echo $text_information; ?></h3>
                <nav>
                    <ul>
                        <?php foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                        <?php } ?>
                    </ul>
                </nav>
            </div>
        <?php } ?>

        <div class="four columns footer_customer_service">
            <h3><?php echo $text_service; ?></h3>
            <nav>
                <ul>
                    <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                    <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                    <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                </ul>
            </nav>
        </div>
        <div class="four columns footer_my_account">
            <h3><?php echo $text_account; ?></h3>
            <nav>
                <ul>
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                </ul>
            </nav>
        </div>
        <div class="four columns">
            <?php include('footer_socials.tpl'); ?>
            <div class="newsletter_footer">
                <?php echo $content_slider; ?>
            </div>
            <div id="powered"><?php echo $powered_dresscode; ?></div>
            <div id="payment_services"><?php include('footer_payment_service.tpl'); ?></div>
        </div>

        <!--
        OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
        Please donate via PayPal to donate@opencart.com
        //-->


    </div>

</div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>

<?php if(!empty($this->request->get['route']) && $this->request->get['route'] != 'common/home') { ?>
</div>
<?php } ?>


</body>
</html>