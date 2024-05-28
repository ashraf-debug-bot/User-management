<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
       .card {
        background: rgba(255, 255, 255, 0.8); 
        
      }
      body{
      background:url("https://static.vecteezy.com/system/resources/previews/000/598/838/original/abstract-colorful-low-poly-vector-background-with-warm-gradient-futuristic-pattern.jpg");}
    </style>
  </head>
  <body>
 <div class="py-3">
</div>
    <div class="card w-50  m-auto">
      <div class="card-body">
       <div class="container-fluid ">
    <div class="text-center mb-4">
      <h4>Find user</h4>
    </div>
         <form action="getUser">
   <div class="mb-3  w-70 m-auto">
    <label for="id" class="form-label">Id</label>
    <input type="text" class="form-control" id="id" name="id">
    
  </div>
  <div class="m-auto w-70">
  <button type="submit" class="btn btn-primary" >Submit</button>
  </div>
</form>
      </div>
    </div>
  </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>