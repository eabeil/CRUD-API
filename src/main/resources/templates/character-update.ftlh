<#import "fragments.ftlh" as ui>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update ${character.name} | The Kingsguard</title>
    <link rel="icon" type="image/jpeg" href="/images/favi.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/styles.css">
</head>
<body class="d-flex flex-column min-vh-100">
    <@ui.navigation />

    <main class="container my-5 flex-grow-1">
        <div class="row justify-content-center">
            <div class="col-lg-7">
                <h1 class="text-center gold mb-4">Update ${character.name}</h1>
                <form action="/update" method="post" class="form-panel p-4 p-md-5 rounded shadow">
                    <input type="hidden" name="id" value="${character.id?c}">
                    <div class="mb-3">
                        <label for="name" class="form-label">Character Name</label>
                        <input id="name" name="name" value="${character.name}" class="form-control" type="text" required>
                    </div>
                    <div class="mb-3">
                        <label for="title" class="form-label">Title</label>
                        <input id="title" name="title" value="${character.title}" class="form-control" type="text" required>
                    </div>
                    <div class="mb-3">
                        <label for="weapon" class="form-label">Weapon</label>
                        <input id="weapon" name="weapon" value="${character.weapon}" class="form-control" type="text" required>
                    </div>
                    <div class="mb-4">
                        <label for="status" class="form-label">Status</label>
                        <input id="status" name="status" value="${character.status}" class="form-control" type="text" required>
                    </div>
                    <div class="d-flex gap-2">
                        <button type="submit" class="btn btn-outline-light" style="border-color: #d4af37; color: #d4af37;">Save Changes</button>
                        <a href="/characters/${character.id?c}" class="btn btn-outline-light">Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
