<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Manager Login</title>
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <script src="https://cdn.tailwindcss.com"></script>
 
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">

  <!-- Login Card -->
  <div class="bg-white shadow-lg rounded-lg p-8 w-full max-w-sm">
    <h1 class="text-2xl font-bold text-center text-gray-800 mb-6">Manager Login</h1>

    <form action="#" method="POST" class="space-y-6">
      
      <!-- Email Input -->
      <div>
        <label for="email" class="block text-gray-700 font-medium mb-2">Email</label>
        <div class="flex items-center border border-gray-300 rounded px-4 py-2">
          <i class="fas fa-envelope text-gray-500 mr-2"></i>
          <input 
            type="email" 
            id="email" 
            name="email" 
            placeholder="Enter your email" 
            class="w-full focus:outline-none focus:ring-2 focus:ring-blue-500"
            required>
        </div>
      </div>
      
      <!-- Password Input -->
      <div>
        <label for="password" class="block text-gray-700 font-medium mb-2">Password</label>
        <div class="flex items-center border border-gray-300 rounded px-4 py-2">
          <i class="fas fa-lock text-gray-500 mr-2"></i>
          <input 
            type="password" 
            id="password" 
            name="password" 
            placeholder="Enter your password" 
            class="w-full focus:outline-none focus:ring-2 focus:ring-blue-500"
            required>
        </div>
      </div>

      <!--display error-->
      <c:if test = "${not empty error}">
      <div class = "bg-red-500/20 text-red-400 border border-red-500 rounted-lg p-4 mb-4">
      <p> hello</p>
    </div>
</c:if>
      <!-- Login Button -->
      <button type="submit" class="bg-blue-500 text-white w-full py-2 rounded hover:bg-blue-600">
        <i class="fas fa-sign-in-alt"></i> Login
      </button>
    </form>

    <!-- Footer Links -->
    <div class="mt-6 text-center text-gray-600 text-sm">
      <a href="#" class="text-blue-500 hover:underline">Forgot Password?</a> |
      <a href="#" class="text-blue-500 hover:underline">Contact Support</a>
    </div>
  </div>

</body>
</html>
    