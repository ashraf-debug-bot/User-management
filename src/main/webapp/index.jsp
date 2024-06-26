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
      body {
        background:url("https://static.vecteezy.com/system/resources/previews/000/598/838/original/abstract-colorful-low-poly-vector-background-with-warm-gradient-futuristic-pattern.jpg");
      }
    </style>
  </head>
  <body>
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Name</th>
          <th scope="col">Email</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="user" items="${users}">
          <tr>
            <th scope="row">${user.id}</th>
            <td>${user.name}</td>
            <td>${user.email}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    <div class="py-3"></div>
    <div class="card w-50 m-auto">
      <div class="card-body">
        <div class="container-fluid">
          <div class="text-center mb-4">
            <h4>Enter your data</h4>
          </div>
          <form action="userDeatils" method="post">
            <div class="mb-3 w-70 m-auto">
              <label for="id" class="form-label">Id</label>
              <input type="text" class="form-control" id="id" name="id">
            </div>
            <div class="mb-3 w-70 m-auto">
              <label for="name" class="form-label">Name</label>
              <input type="text" class="form-control" id="name" name="name">
            </div>
            <div class="mb-3 w-70 m-auto">
              <label for="email" class="form-label">Email address</label>
              <input type="email" class="form-control" id="email" name="email">
            </div>
            <div class="mb-3 w-70 m-auto">
              <label for="password" class="form-label">Password</label>
              <input type="password" class="form-control" id="password" name="password">
            </div>
            <div class="m-auto w-70">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </form>
          <div class="text-end">
            <button type="button" class="btn btn-primary text-end" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
              Find User
            </button>
          </div>
          <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <form action="getUser">
                    <div class="mb-3 w-70 m-auto">
                      <label for="id" class="form-label">Id</label>
                      <input type="text" class="form-control" id="id" name="id">
                    </div>
                    <div class="m-auto w-70">
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
