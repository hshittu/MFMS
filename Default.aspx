<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div class="container">
        <div class="Aside">
            Medical Facility Management System (MFMS) is the best Application system for managing and maintenance of hospital records.<br />
            This Application has Numerous capabilities to help the users which include doctors, Nurses, Pharmacists, Receptionists and Administrators carry out their jobs effectively with a user friendly and easily operative Interface<br />
            Lets Get Started <a href="Login.aspx">Login</a>.
        </div>
   <div id="content-slider">
      <div id="slider">  <!-- Slider container -->
         <div id="mask">  <!-- Mask -->

         <ul>
         <li id="first" class="firstanimation">  <!-- ID for tooltip and class for animation -->
         <a href="#"> <img src="App_Themes/bootstrap/Technology.jpg" alt="Technology" width="660" height="320"/> </a>
         <div class="carousel-caption"> <h2>State Of The Art Technology</h2> </div>
         </li>

         <li id="second" class="secondanimation">
         <a href="#"> <img src="App_Themes/bootstrap/BestStaff.jpg" alt="Staff" width="660" height="320"/> </a>
         <div class="carousel-caption"><h2>Best Staff</h2> </div>
         </li>

         <li id="third" class="thirdanimation">
         <a href="#"> <img src="App_Themes/bootstrap/CondusiveEnvironment.jpg" alt="Environment" width="660" height="320"/> </a>
         <div class="carousel-caption"> <h2>Best Environment</h2> </div>
         </li>

         <li id="fourth" class="fourthanimation">
         <a href="#"> <img src="App_Themes/bootstrap/saveAnimation.jpg" alt="Friendly" width="660" height="320"/> </a>
         <div class="carousel-caption"> <h2>User Friendly</h2> </div>
         </li>

         <li id="fifth" class="fifthanimation">
         <a href="#"> <img src="App_Themes/bootstrap/hospital.jpg" alt="Entertainment" width="660" height="320"/> </a>
         <div class="carousel-caption"> <h2>Entertainment</h2> </div>
         </li>
         </ul>

         </div>  <!-- End Mask -->
         <div class="progress-bar"></div>  <!-- Progress Bar -->
      </div>  <!-- End Slider Container -->
   </div>
</div>
    
</asp:Content>

