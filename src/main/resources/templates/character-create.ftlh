<#import "fragments.ftlh" as ui>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1.0">
    <title>About | The Kingsguard</title>
    <link rel="icon" type="image/jpg" href="images/favi.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body class="d-flex flex-column min-vh-100">

    <@ui.navigation active="create" /> 
    
    <main class="container my-5 flex-grow-1">
        <div class="row justify-content-center">
            <div class="col-lg-7">   
                <h1 style="color: #d4af37;">Add a New Character</h1>
                <p style="color: #d0d0d0;">Submit a request to feature your favorite character</p>
            </div>

            <form action="/create" method="post" class="form-panel p-4 p-md-5 rounded shadow">
                    <div class="mb-3">
                        <label for="name" class="form-label">Character Name</label>
                        <input id="name" name="name" class="form-control" type="text" required>
                    </div>
                    <div class="mb-3">
                        <label for="title" class="form-label">Title</label>
                        <input id="title" name="title" class="form-control" type="text" required>
                    </div>
                    <div class="mb-3">
                        <label for="weapon" class="form-label">Weapon</label>
                        <input id="weapon" name="weapon" class="form-control" type="text" required>
                    </div>
                    <div class="mb-4">
                        <label for="status" class="form-label">Status</label>
                        <input id="status" name="status" class="form-control" type="text" placeholder="Alive, deceased, missing..." required>
                    </div>
                    <div class="d-flex gap-2">
                        <button type="submit" class="btn btn-outline-light">Add to Gallery</button>
                        <a href="/characters" class="btn btn-outline-light">Cancel</a>
                    </div>
            </form>
        </div>    
    </main>

    <div class="text-center mt-5 mb-3">
        <a href="/characters" class="btn btn-outline-light px-4 py-2" style="border-color: #d4af37; color: #d4af37;">Return to Home Page</a>
    </div>

    <footer class="bg-dark text-center py-3 mt-auto">
        <p class="mb-0">&copy; 2026 ASOIAF characters. Created for educational purposes.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>                    
</html>
