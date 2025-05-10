<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Crown Crest Hotel</title>

  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

  <!-- Custom CSS -->
  <link rel="stylesheet" href="styles/styles.css" />
</head>
<body class="bg-gray-50 font-sans">

<!-- Header -->
  <header class="bg-transparent absolute top-0 left-0 w-full z-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex justify-between items-center h-20">

        <!-- Logo -->
        <div class="logo"> 
                <a href="header.jsp"><img src="images/logo.png" id="logoimage" alt="Crown Crest Logo"></a>
            </div>

        <!-- Nav -->
        <!-- Nav -->
<nav class="hidden md:flex space-x-12 text-medium font-semibold uppercase">
  <a href="HomePage.jsp" class="text-black hover:text-blue-400">Home</a>
  <a href="#" class="text-black hover:text-blue-400">Our features</a>
  <a href="#" class="text-black hover:text-blue-400">Venue</a>
  <a href="#" class="text-black hover:text-blue-400">Offers</a>
  <a href="#" class="text-black hover:text-blue-400">Gallery</a>
  <a href="#" class="text-black hover:text-blue-400">Contacts Us</a>
</nav>

        

        </nav>

        <!-- Account & Button -->
        <div class="hidden md:flex items-center space-x-6">
          <a href="login.jsp" class="text-black hover:text-blue-400 flex items-center space-x-1">
            <i class="fas fa-user"></i>
            <span>Login</span>
          </a>
          <a href="#" class="bg-bllue-500 hover:bg-blue-600 text-black font-semibold py-2 px-4 rounded">
            Book A Stay
          </a>
      
        </div>


  </header>