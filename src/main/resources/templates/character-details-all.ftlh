<#import "fragments.ftlh" as ui>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1.0">
    <title>Details | The Kingsguard</title>
    <link rel="icon" type="image/jpg" href="images/favi.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/styles.css">
</head>
<body class="d-flex flex-column min-vh-100">
    <@ui.navigation active="details" />
    <header class="container text-center my-5">
        <h1 class="gold">The Knights of Aerys II</h1>
        <p class="lead">History, deeds, and fate of the legendary white cloaks</p>
    </header>
    <main class="container flex-grow-1">
        <#if characterList?size == 0>
            <p class="text-center">No character records are available.</p>
        <#else>
            <#list characterList as character>
                <@ui.characterProfile character=character showActions=false />
            </#list>
        </#if>
    </main>
    <footer class="bg-dark text-center py-3 mt-auto">
        <p class="mb-0">&copy; 2026 ASOIAF characters. Created for educational purposes.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
