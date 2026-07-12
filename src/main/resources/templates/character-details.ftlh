<#import "fragments.ftlh" as ui>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${character.name} | The Kingsguard</title>
    <link rel="icon" type="image/jpeg" href="/images/favi.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/styles.css">
</head>
<body class="d-flex flex-column min-vh-100">
    <@ui.navigation active="details" />

    <main class="container my-5 flex-grow-1">
        <@ui.characterProfile character=character />
    </main>

    <footer class="bg-dark text-center py-3 mt-auto">
        <p class="mb-0">&copy; 2026 ASOIAF characters. Created for educational purposes.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
