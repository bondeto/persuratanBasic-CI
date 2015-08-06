<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Tes Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="<?=site_url()?>/assets/tmpl_adm/css/bootstrap.min.css" rel="stylesheet">
<link href="<?=site_url()?>/assets/tmpl_adm/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet">
<link href="<?=site_url()?>/assets/tmpl_adm/css/font-awesome.css" rel="stylesheet">
<link href="<?=site_url()?>/assets/tmpl_adm/css/style.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <?php 
foreach($css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
 
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
 
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
</head>
<body>
<p><a href="<?=base_url()?>index.php/FrontPage/listSurat">list Surat</a>  
<a href="<?=base_url()?>index.php/FrontPage/instansi">Instansi</a> 
<a href="<?=base_url()?>index.php/FrontPage/sifatSurat">Sifat Surat</a> 
<a href="<?=base_url()?>index.php/FrontPage/unit">Unit Internal</a>
<a href="<?=base_url()?>index.php/FrontPage/user">user</a>
 
 </p>
<?php echo $output; ?>

</body>
</html>
