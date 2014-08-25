<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />

<!-- Optional theme -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" />

<!-- Latest compiled and minified JavaScript -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <title>Portada</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script  src="{{ url static_file='_js/bootstrap.js' }}" type="text/javascript"></script>
    <script  src="{{ url static_file='_js/jquery-1.11.0.min.js' }}" type="text/javascript"></script>
    <script  src="{{ url static_file='_js/lightbox.min.js' }}" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/lightbox.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/screen.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/bootstrap.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/front.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/header.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/nav.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/page.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/social.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/search.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/blogs_menu.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/banners.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/menu_teaser.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/_pages/front_col1.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/_pages/front_col2.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/_pages/front_col3.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/_articles/front_article_background.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/_articles/front_article_box.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/_articles/front_article_images.css' }}"/>
    <link rel="stylesheet" type="text/css" href="{{ url static_file='_css/_articles/front_article_simple.css' }}"/>
    <link href="//fonts.googleapis.com/css?family=Source+Sans Pro:200italic,200,300italic,300,400italic,400,600italic,600,700italic,700,900italic,900" rel="stylesheet" type="text/css" />
    </head>
<body>
    <div class="content container">
        <div class="row">
            <div class="col-md-9">
                <h1><font color="red">C</font>abecera</h1>
            </div>
            <div class="col-md-3">
                {{ include file='_tpl/social.tpl' }}
                {{ include file='_tpl/search.tpl' }}
            </div>      
        </div>
<!-- ************************Fin del header*******************************-->

    {{ include file='nav.tpl' }}
