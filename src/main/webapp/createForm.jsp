<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Create form</title>
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
 <%@ include file="header.jsp" %>
  <!-- Dashboard Layout -->
  <div class="flex h-screen">

    <!-- Main Content Area -->
    <div class="flex-1 flex flex-col">

      <!-- Top Bar -->
      <header class="bg-white shadow-md px-6 py-4 flex justify-between items-center">
        <h2 class="text-xl font-semibold">offer Management</h2>
        <div class="flex items-center space-x-4">
          <button class="bg-red-500 text-white px-4 py-2 rounded hover:bg-red-600">
            <i class="fas fa-sign-out-alt"></i> Logout
          </button>
        </div>
      </header>

      <!-- Content Area -->
      <main class="flex-grow bg-gray-100 flex justify-center items-center">
        <div class="bg-white shadow rounded-lg p-6 w-full max-w-md">
          <h3 class="text-lg font-bold mb-4">Create New Offer</h3>

          <!-- Form for Creating New Room -->
          <form class="space-y-6">
            <div>
              <label class="block text-gray-700 font-medium mb-2">Offer Name</label>
              <select class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
                <option>Select Offer Name</option>
                <option>Room Offer</option>
                <option>Dinning Offer</option>
                <option>Event Offer</option>
              </select>
            </div>
            <div>
              <label class="block text-gray-700 font-medium mb-2"> OfferTablesType</label>
              <select class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
                <option>Select Table Type</option>
                <option>LUXURY SUITE OFFER</option>
                <option>ROAmantic Escapes</option>
                <option>DINNER BUFFET</option>
                <option>FAMILY MEAL</option>
                <option>EVENTS</option>
                <option>WEDDINGS</option>
              </select>
            </div>
            <div>
              <label class="block text-gray-700 font-medium mb-2">Start Date</label>
              <input type="date" placeholder="Enter start date" class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <div>
              <label class="block text-gray-700 font-medium mb-2">End Date</label>
              <input type="date" placeholder="Enter end date" class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <div>
              <label class="block text-gray-700 font-medium mb-2">Discount Percentage</label>
              <input type="number" placeholder="Enter percentage" class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <div class="flex justify-end">
              <button type="submit" class="bg-blue-500 text-white px-6 py-2 rounded hover:bg-blue-600">
                <i class="fas fa-save"></i> <a href="table.jsp" class="know-more">Submit&gt;</a>
              </button>
            </div>
          </form>
        </div>
      </main>

    </div>
  </div>

</body>
</html>
    