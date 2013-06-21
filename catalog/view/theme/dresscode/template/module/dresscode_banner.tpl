<div id="slider_top">
    <ul class="rslides" id="carousel1">
    <?php
        $i = 0;
        while ($i < count($banners)) {
    ?>
        <li>
            <div class="overlap_widget_wrapper">
                <?php for ($j = $i; $j < $i + 2; $j++) { ?>
                    <div class="<?php echo (($j%2 == 0) ? 'left' : 'right'); ?>_image">
                        <div class="placeholder">
                            <?php if ($banners[$j]['link']) { ?>
                            <a href="<?php echo $banners[$j]['link']; ?>">
                                <img class="scale-with-grid" src="<?php echo $banners[$j]['image']; ?>" alt="<?php echo $banners[$j]['title']; ?>" title="<?php echo $banners[$j]['title']; ?>" />
                            </a>
                            <?php } else { ?>
                                <img class="scale-with-grid" src="<?php echo $banners[$j]['image']; ?>" alt="<?php echo $banners[$j]['title']; ?>" title="<?php echo $banners[$j]['title']; ?>" />
                            <?php } ?>
                        </div>
                    </div>
                <?php } $i = $i + 2; ?>
                    <div class="clear"></div>
            </div>
        </li>
    <?php
        }
    ?>
    </ul>
</div>

