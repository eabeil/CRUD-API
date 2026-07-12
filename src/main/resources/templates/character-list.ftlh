<#import "fragments.ftlh" as ui>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1.0">
    <title>Home | The Kingsguard</title>
    <link rel="icon" type="image/jpg" href="images/favi.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <@ui.navigation active="home" searchName=searchName />
    
    <header class="container-fluid text-center my-5">
        <h1 style="color: #d4af37;">The Kingsguard of Aerys II</h1>
        <p1 class="lead">The greatest Knights of the Seven kingdoms</p1>
    </header>

    <main class="container mb-5 flex -grow-1">
        <#if characterList?size == 0>
            <div class="empty-state text-center p-5 rounded">
                <h2>No characters found</h2>
                <p>Try another search or add the first matching character.</p>
            </div>
        <#else>
            <div class="row g-4">
                <#list characterList as character>
                    <div class="col-lg-4 col-md-6">
                        <article class="card character-card h-100 shadow-sm border-0">
                            <img src="${ui.characterImage(character.name)}" class="card-img-top gallery-image" alt="${character.name}">
                            <div class="card-body d-flex flex-column">
                                <h2 class="card-title h4 fw-bold">${character.name}</h2>
                                <h3 class="card-subtitle h6 mb-3 text-muted">${character.title}</h3>
                                <p class="card-text mb-1"><strong>Weapon:</strong> ${character.weapon}</p>
                                <p class="card-text"><strong>Status:</strong> ${character.status}</p>
                                <a href="/characters/${character.id?c}" class="btn btn-dark mt-auto">View Details</a>
                            </div>
                        </article>
                    </div>
                </#list>
            </div>
        </#if>
    </main>

    <footer class="bg-dark text-center py-3 mt-auto">
        <p class="mb-0">&copy; 2026 ASOIAF characters. Created for educational purposes.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


    <script src="/app.js"></script>
</body>
</html>   