<div class="four columns omega" id="contact">
    <h3><?php echo $contact_info; ?></h3>
    <p class="clearfix contact_phone">
        <strong><?php echo $contact_phone; ?></strong><br>
        <?php echo $phone_numbers; ?>
    </p>
    <p class="clearfix contact_cell_phone">
        <strong><?php echo $cell_phone; ?></strong><br>
        <?php echo $phone_numbers; ?>
    </p>
    <p class="clearfix contact_addresses">
        <strong><?php echo $mail_addresses; ?></strong><br>
        <a href="mailto:<?php echo $mail_sails; ?>"><?php echo $mail_sails; ?></a><br>
        <a href="mailto:<?php echo $mail_info; ?>"><?php echo $mail_info; ?></a>
    </p>
    <p class="clearfix contact_skype">
        <strong><?php echo $skype_title; ?></strong><br>
        <?php echo $skype_accounts; ?>
    </p>
</div>