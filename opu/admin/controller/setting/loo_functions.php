<?php

function loo_parse_queries($file) {
    $sql_file = $file;

    $contents = file_get_contents($sql_file);

    $comment_patterns = array('/\/\*.*(\n)*.*(\*\/)?/', // comments
        '/\s*--.*\n/', //inline comments start with --
        '/\s*#.*\n/', //inline comments start with #
    );
    $contents = preg_replace($comment_patterns, "\n", $contents);

    $contents = preg_replace('/(?<=t);(?=\n)/', "{{semicolon_in_text}}", $contents);

    $statements = explode(";\n", $contents);
//    $statements = preg_replace("/\s/", ' ', $statements);

    $queries = array();
    foreach ($statements as $query) {
        if (trim($query) != '') {

			$query = str_replace("{{semicolon_in_text}}", ";", $query);

            //apply db prefix parametr
            preg_match("/\?:\w*/i", $query, $matches);
            $table_name = str_replace('?:', DB_PREFIX, $matches[0]);
            if ( !empty($table_name) ) {
                $query = str_replace(array($matches[0], 'key = '), array($table_name, '`key` = '), $query);
            }

            $queries[] = $query;
        }
    }

    return $queries;
}

?>