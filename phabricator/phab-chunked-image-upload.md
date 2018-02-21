# Image upload

```
<?php

$file = "the.file.jpg";
$loc = __DIR__ ."/temp/".$file;

//$file = file_get_contents($loc);

$r = query("file.allocate",[
    "name" => $file,
    "contentLength" => filesize($loc)


]);

var_export($r);

if(!is_null($r['result']['filePHID'])){
    $phid = $r['result']['filePHID'];
    $handle = fopen($loc, "rb");
    if (FALSE === $handle) {
        exit("Failed to open stream to URL");
    }

    $contents = '';
    $b = 0;
    $size = 4194304;
    while (!feof($handle)) {
        echo "starting chunk $b <br/>\n";
        $contents = fread($handle, $size);

        $r = query("file.uploadchunk",[
            "filePHID" => $phid,
            "byteStart" => $b,
            "data" => $contents


        ]);
        var_dump($r);
        $b += $size;
    }
    fclose($handle);

}




function query($action, $array)
{

    $array['api.token'] = 'api-key-here';
    $post = http_build_query($array);
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, "http://phabricator.url/api/" . $action);
    curl_setopt(
        $ch,
        CURLOPT_HEADER,
        "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322)"
    );
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
    $return = curl_exec($ch);
    curl_close($ch);

    return json_decode($return, true);

}

```