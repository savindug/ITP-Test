
<!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
      <script src="js/stylish-portfolio.min.js"></script>

    <!-- FAQ JS-->
      <script src="js/FAQ.js"></script>

   <!-- js pakage cards -->
     <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
     <script src="js/js/bootstrap.min.js"></script>
     <script src="js/js/jquery-3.4.1.min.js"></script>
       <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>

     <script>
        $().ready(function(){
             $('[rel="tooltip"]').tooltip();

         });

         function rotateCard(btn){
             var $card = $(btn).closest('.card-container');
             console.log($card);
             if($card.hasClass('hover')){
                 $card.removeClass('hover');
             } else {
                 $card.addClass('hover');
             }
         }
     </script>

  <!-- / Custom scripts for this template -->
  </body>
</html>