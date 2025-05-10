<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Footer with Animation</title>
        <!-- Include External CSS -->
        <link rel="stylesheet" href="styles/footer.css" />
        <!-- Include FontAwesome -->
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <footer>
            <div class="row">
                <!-- Logo and Description -->
                <div class="col">
                    <img src="images/logo.png" class="logo" alt="Logo">
                    <p>Subscribe to our newsletter for the latest updates and promotions.</p>
                </div>
                
                <!-- Office Information -->
                <div class="col">
                    <h3>Office <div class="underline"><span></span></div></h3>
                    <p>Colombo Road</p>
                    <p>WhiteField, Grandpass</p>
                    <p>Taj</p>
                    <p class="email-id">CrownCrest.com</p>
                    <h4>+94 - 0112678943</h4>
                </div>

                <!-- Links Section -->
                <div class="col">
                    <h3>Links <div class="underline"><span></span></div></h3>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Features</a></li>
                        <li><a href="#">Contacts</a></li>
                    </ul>
                </div>

                <!-- Newsletter and Social Media Section -->
                <div class="col">
                    <h3>Newsletter <div class="underline"><span></span></div></h3>
                    <form>
                        <i class="far fa-envelope"></i>
                        <input type="email" placeholder="Enter your email id" required>
                        <button type="submit"><i class="fas fa-arrow-right"></i></button>
                    </form>
                    <div class="social-icons">
    <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
    <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
    <a href="#" class="social-icon"><i class="fab fa-whatsapp"></i></a>
    <a href="#" class="social-icon"><i class="fab fa-pinterest"></i></a>
</div>

            </div>
            <hr>
            <p class="copyright">All rights reserved &copy; 2025</p>
        </footer>
    </body>
</html>
