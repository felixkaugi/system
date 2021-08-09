<?php include 'filesLogic.php'; ?>
<!DOCTYPE html>
<html>
<head>
  <title>File Upload</title>
  <link rel="stylesheet" type="text/css" href="styl.css">
</head>
<body>
  <div class="content">
    <div class="row">
      <form action="" method="post" enctype="multipart/form-data">
        <input type="file" name="myfile"><br>
        <button type="submit" name="upload" class="btn">Upload</button>
      </form>
    </div>
  </div>
</body>
</html>
