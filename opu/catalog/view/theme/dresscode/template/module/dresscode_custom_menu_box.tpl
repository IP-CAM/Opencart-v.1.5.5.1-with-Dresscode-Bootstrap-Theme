<li id="menu_custom_title">
    <a href="#"><?php echo $heading_title; ?></a>
    <div id="menu_custom_block">
        <?php
            if ($message !== '') {
                echo $message;
            } else {
                echo 'Your text here!';
            }
        ?>
    </div>
</li>



