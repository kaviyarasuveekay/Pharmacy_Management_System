<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Add New Supplier</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		<script src="bootstrap/js/jquery.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/home.css">
    <script src="js/validateForm.js"></script>
    <script src="js/restrict.js"></script>
  </head>
  <body>
    <!-- including side navigations -->
    <?php include("sections/side.html"); ?>

    <div class="container-fluid">
      <div class="container">
        <!-- header section -->
        <?php
          require "php/header.php";
          createHeader('group', 'Add Supplier', 'Add New Supplier');
          // header section end
        ?>
        <div class="row">
          <div class="row col col-md-6">
            <?php
              // form content
              require "sections/add_new_supplier.html";
            ?>
          </div>
        </div>
        <hr style="border-top: 2px solid #7CFC00;"><br>

      </div>
    </div>
  </body>
</html>