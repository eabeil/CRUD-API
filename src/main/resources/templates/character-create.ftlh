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
            <div class="col-lg-8 col-md-10">
                <div class="text-center mb-4">   
                    <h1 style="color: #d4af37;">Add a New Character</h1>
                    <p style="color: #d0d0d0;">Submit a request to feature your favorite character</p>
                </div>

            <div class="p-4 p-md-5 rounded shadow-lg" style="background-color: #2a2a30; border-top: 5px solid #d4af37;">
                <form action="#" method="get">
                    <div class="mb-3">
                        <label for="char-name" class="form-label text-white">Character Name:</label>
                        <input type="text" class="form-control form-control-lg" id="char-name"  name="char-name" placeholder="e.g., Ser Duncan the Tall" required>
                    </div>

                <div class="mb-3">
                    <label for="char-universe" class="form-label text-white">Universe:</label>
                    <input type="text" class="form-control form-control-lg" id="char-universe" name="char-universe" placeholder="A Song of Ice and Fire" required>
                </div>

                <div class="mb-3">
                    <label for="char-role" class="form-label text-white">Role:</label>
                    <input type="text" class="form-control form-control-lg" id="char-role" name="char-role" placeholder="e.g., Lord Commander" required>
                </div>

                <div class="mb-3">
                    <label for="char-image" class="form-label text-white">Image URL:</label>
                    <input type="url" class="form-control form-control-lg" id="char-image" name="char-image" placeholder="https://noname.com/image.jpg" required>
                </div>

                <div class="mb-3">
                    <label for="char-desc" class="form-label text-white">Short Description:</label>
                    <textarea id="char-desc" class="form-control form-control-lg" name="char-desc" rows="6" placeholder="Enter character background and lore" required></textarea>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn-lg py-3 fw-bold fs-4" style="background-color: #d4af37; color: #111;">Add to Gallery</button>
                </div>    
            </div>
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
