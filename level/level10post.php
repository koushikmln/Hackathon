<?php
$target_dir = "/var/www/html/hackathon/uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}
// Check file size
if ($_FILES["fileToUpload"]["size"] > 500000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}
if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
} 
else {
        echo "Sorry, there was an error uploading your file.";
}
?>
