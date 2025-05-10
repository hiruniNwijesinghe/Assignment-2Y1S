package com.TheCrownCrest.servelt;

import com.TheCrownCrest.model.Offer;
import com.TheCrownCrest.service.OfferService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/offer")
public class ManageServelt extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private OfferService offerService;

    @Override
    public void init() throws ServletException {
        offerService = new OfferService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        try {
            if (action == null) {
                List<Offer> offers = offerService.getAllOffers();
                request.setAttribute("offers", offers);
                request.getRequestDispatcher("table.jsp").forward(request, response);
            } else if (action.equals("edit")) {
                int id = Integer.parseInt(request.getParameter("id"));
                Offer offer = offerService.getOffer(id);
                request.setAttribute("offer", offer);
                request.getRequestDispatcher("editForm.jsp").forward(request, response);
            } else if (action.equals("delete")) {
                int id = Integer.parseInt(request.getParameter("id"));
                offerService.deleteOffer(id);
                response.sendRedirect("offer");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        try {
            if (action.equals("create")) {
                String offerName = request.getParameter("offerName");
                String offerTableType = request.getParameter("offerTableType");
                String startDate = request.getParameter("startDate");
                String endDate = request.getParameter("endDate");
                int discountPercentage = Integer.parseInt(request.getParameter("discountPercentage"));

                Offer offer = new Offer(0, offerName, offerTableType, startDate, endDate, discountPercentage);
                offerService.createOffer(offer);
                response.sendRedirect("offer");
            } else if (action.equals("update")) {
                int id = Integer.parseInt(request.getParameter("id"));
                String offerName = request.getParameter("offerName");
                String offerTableType = request.getParameter("offerTableType");
                String startDate = request.getParameter("startDate");
                String endDate = request.getParameter("endDate");
                int discountPercentage = Integer.parseInt(request.getParameter("discountPercentage"));

                Offer offer = new Offer(id, offerName, offerTableType, startDate, endDate, discountPercentage);
                offerService.updateOffer(offer);
                response.sendRedirect("offer");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred.");
        }
    }
}
