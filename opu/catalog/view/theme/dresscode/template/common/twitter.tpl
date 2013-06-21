<div id="twitter" class="four columns alpha">
    <h3><?php echo $text_twitter_feeds; ?></h3>

<?php

    include ("twitter.class.php");

    function getTwitts($twitter_account_name) {
        $twitterr = $twitter_account_name;
        $twitter = new Twitter('mHLVU8JL8MqOFAOiTf4kkw','iXCNt0bvXT6CJxmHOaEdnG3XBK8i0yQkxLQGrmz2GzM');
        $twitter->setOAuthToken('245875355-m6yVpzk90R6f0sKayGUFlP8Zlt81PTRMBDObtTeZ');
        $twitter->setOAuthTokenSecret('VjrBFJDspC3mOAq1KSqHWzwlLfwr9OUrPw8eNkoTpcs');
        $output = $twitter->statusesUserTimeline('', '@'.$twitterr);

        return $output;
    }

    try {
        $twitts = getTwitts($twitter_account_name);

    ?>
    <div class="box-twitter">

        <ul id="mycarousel" class="jcarousel jcarousel-skin-tango">
            <?php foreach (array_slice($twitts,0,4) as $twitt): ?>
            <li>
                <div class="twitter-marker" style="padding-bottom:30px">
                    <p><a target="_blank" href="https://twitter.com/#!/<?=$twitt['user']['screen_name']?>">
                        <?=$twitt['text']?></a></p>
                    <span><?=$twitt['created_at']?></span>
                </div>
            </li>
            <?php endforeach; ?>
        </ul>

    </div>
    <?php

    } catch (Exception $e) {
        echo $e->getMessage();
    }
    ?>



</div>