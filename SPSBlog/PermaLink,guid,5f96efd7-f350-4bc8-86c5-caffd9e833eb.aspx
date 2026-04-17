<!DOCTYPE html>
<html>
<body>
   <script>
      redirect();
      function redirect () {
         setTimeout(myURL, 1000);
      }

      function myURL() {
         document.location.href = 'https://google.com';
      }
   </script>
</body>
</html>