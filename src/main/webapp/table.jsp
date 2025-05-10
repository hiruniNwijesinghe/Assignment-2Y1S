<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Manager Dashboard</title>
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
   <%@ include file="header.jsp" %>

   <div class="flex-1 flex flex-col">
      <header class="bg-white shadow p-4 flex justify-between items-center">
        <div class="text-xl font-semibold">Welcome, Manager</div>
        <div class="flex items-center space-x-4">
          <div class="text-gray-600">John Doe</div>
          <button class="bg-red-500 text-white px-4 py-2 rounded hover:bg-red-600">
            <i class="fas fa-sign-out-alt"></i> Logout
          </button>
        </div>
      </header>

      <main class="p-6 bg-gray-100 flex-grow">
        <div class="bg-white shadow rounded-lg p-6">
          <div class="flex justify-between items-center mb-4">
            <h2 class="text-xl font-bold">Manage Records</h2>
            <button class="bg-green-500 text-white px-4 py-2 rounded hover:bg-green-600">
              <i class="fas fa-plus"></i> 
              <a href="createForm.jsp" class="know-more">Create New Offer</a>
            </button>
          </div>

          <div class="overflow-x-auto sm:overflow-visible">
            <table class="min-w-full table-auto border-collapse border border-gray-200">
              <thead>
                <tr class="bg-gray-200 text-left">
                  <th class="border border-gray-300 px-5 py-2">Offer Name</th>
                  <th class="border border-gray-300 px-5 py-2">Offer Table Type</th>
                  <th class="border border-gray-300 px-5 py-2">Start Date</th>
                  <th class="border border-gray-300 px-5 py-2">End Date</th>
                  <th class="border border-gray-300 px-5 py-2">Discount Percentage</th>
                  <th class="border border-gray-300 px-5 py-2 text-center">Actions</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="offer" items="${offers}">
                  <tr class="hover:bg-gray-100">
                    <td class="border border-gray-300 px-4 py-2 text-center">${offer.offerName}</td>
                    <td class="border border-gray-300 px-4 py-2 text-center">${offer.offerTablesType}</td>
                    <td class="border border-gray-300 px-4 py-2 text-center">${offer.startDate}</td>
                    <td class="border border-gray-300 px-4 py-2 text-center">${offer.endDate}</td>
                    <td class="border border-gray-300 px-4 py-2 text-center">${offer.discountPercentage}</td>
                    <td class="border border-gray-300 px-4 py-2 text-center">
                      <a href="editForm.jsp?id=${offer.id}" class="text-blue-500 hover:text-blue-700 mx-2">
                        <i class="fas fa-edit"></i> Edit
                      </a>
                      <button class="text-red-500 hover:text-red-700 mx-2" onclick="deleteOffer(${offer.id})">
                        <i class="fas fa-trash-alt"></i> Delete
                      </button>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </main>
   </div>

   <script>
       function deleteOffer(id) {
           if (confirm("Are you sure you want to delete this offer?")) {
               window.location.href = `deleteOffer.jsp?id=${id}`;
           }
       }
   </script>
</body>
</html>
