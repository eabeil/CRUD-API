<#function characterImage name>
    <#assign normalized = name?lower_case>
    <#if normalized?contains("gerold") || normalized?contains("hightower")>
        <#return "/images/ser_Gerold.jpg">
    <#elseif normalized?contains("arthur") || normalized?contains("dayne")>
        <#return "/images/ser_Arthur.jpg">
    <#elseif normalized?contains("barristan") || normalized?contains("selmy")>
        <#return "/images/Ser_Barristan.jpg">
    <#elseif normalized?contains("oswell") || normalized?contains("whent")>
        <#return "/images/ser_Oswell.jpg">
    <#elseif normalized?contains("jon") || normalized?contains("darry")>
        <#return "/images/ser_Jon.jpg">
    <#elseif normalized?contains("lewyn") || normalized?contains("martell")>
        <#return "/images/ser_Martell.jpg">
    <#elseif normalized?contains("jaime") || normalized?contains("lannister")>
        <#return "/images/ser_Jaime.jpg">
    <#else>
        <#return "/images/kingsguard.jpg">
    </#if>
</#function>

<#macro navigation active="" searchName="">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/characters" style="color: rgb(232, 215, 118);">The Kingsguard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNavigation" aria-controls="mainNavigation" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="mainNavigation">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link <#if active == 'home'>active</#if>" href="/characters">Home</a></li>
                    <li class="nav-item"><a class="nav-link <#if active == 'details'>active</#if>" href="/details">Details</a></li>
                    <li class="nav-item"><a class="nav-link <#if active == 'about'>active</#if>" href="/about">About</a></li>
                    <li class="nav-item"><a class="nav-link <#if active == 'create'>active</#if>" href="/createForm">Add a Character</a></li>
                </ul>
                <form class="d-flex" action="/characters" method="get">
                    <input class="form-control me-2" name="name" value="${searchName}" type="search" placeholder="Search by Name" aria-label="Search by name">
                    <button class="btn btn-outline-light" type="submit" style="border-color: #d4af37; color: #d4af37;">Search</button>
                </form>
            </div>
        </div>
    </nav>
</#macro>

<#macro characterProfile character showActions=true>
    <#assign normalized = character.name?lower_case>
    <article class="row mb-5 p-4 rounded shadow lore-profile">
        <div class="col-md-4 text-center mb-4 mb-md-0">
            <img src="${characterImage(character.name)}" alt="${character.name}" class="img-fluid rounded shadow lore-image">
        </div>
        <div class="col-md-8">
            <h2 class="profile-name">${character.name}</h2>
            <h3 class="h5 gold">${character.title}</h3>
            <p class="small mb-1"><strong class="gold">Weapon:</strong> ${character.weapon}</p>
            <p class="small"><strong class="gold">Status:</strong> ${character.status}</p>
            <hr class="border-secondary">

            <#if normalized?contains("gerold") || normalized?contains("hightower")>
                <h4 class="h6 text-white mt-3">Background</h4>
                <p>Ser Gerold Hightower, known as the White Bull, was the Lord Commander of the Kingsguard. A man of immense physical strength and strict adherence to duty, he took over command of the white cloaks after the tragic death of Ser Duncan the Tall at Summerhall.</p>
                <h4 class="h6 text-white mt-3">Notable Feats</h4>
                <p>During the War of the Ninepenny Kings, Gerold took command of the royal forces after the Hand of the King was slain in battle. Later, during the campaign against the Kingswood Brotherhood, he was famously shot through the hand by the Smiling Knight, which led to Ser Arthur Dayne taking over the pursuit of the outlaws.</p>
                <h4 class="h6 text-white mt-3">His Fate</h4>
                <p>Like Arthur Dayne, Lord Commander Hightower remained at the Tower of Joy in Dorne on the orders of Prince Rhaegar. He refused Lord Eddard Stark's offer of peace, reminding him that the Kingsguard do not flee. He was slain in the ensuing seven-on-three skirmish.</p>
            <#elseif normalized?contains("arthur") || normalized?contains("dayne")>
                <h4 class="h6 text-white mt-3">Background</h4>
                <p>Ser Arthur Dayne was the deadliest and most renowned member of King Aerys II's Kingsguard. As a true knight of House Dayne of Starfall, he earned the prestigious title “Sword of the Morning” after proving himself worthy to wield their ancestral greatsword, Dawn, which was forged from the heart of a fallen star. He was beloved by the smallfolk and was Prince Rhaegar Targaryen's closest and most trusted friend.</p>
                <h4 class="h6 text-white mt-3">Notable Feats</h4>
                <p>Arthur's skill with a blade was unrivaled in Westeros and he was considered the greatest swordsman to ever live. His most famous exploit was his campaign against the notorious Kingswood Brotherhood. During the final clash, Arthur engaged in a legendary single combat against the Smiling Knight, a madman considered the deadliest outlaw of the band. As they fought, the Smiling Knight's sword became heavily notched and ruined by strikes from Dawn. In a true display of chivalry, Arthur paused the duel and allowed the outlaw to fetch a fresh weapon. When the Smiling Knight returned, he pointed at Dawn and said, “It's that white sword of yours I want.” Arthur simply replied, “Then you shall have it, ser,” before crossing blades once more and slaying him.</p>
                <h4 class="h6 text-white mt-3">His Fate</h4>
                <p>Ser Arthur remained loyal to his Kingsguard vows until his final breath. During the climax of Robert's Rebellion, he was stationed at the Tower of Joy in the Red Mountains of Dorne to guard Lyanna Stark alongside Ser Oswell Whent and Lord Commander Gerold Hightower. He died in combat against Lord Eddard Stark and his six northern companions. According to Eddard's own admission, Arthur would have defeated him if not for the last-minute intervention of the crannogman Howland Reed.</p>
            <#elseif normalized?contains("barristan") || normalized?contains("selmy")>
                <h4 class="h6 text-white mt-3">Background</h4>
                <p>Considered one of the greatest knights to ever live, Barristan was knighted at the age of sixteen by King Aegon V Targaryen. He is revered throughout the Seven Kingdoms for his unmatched honor, humility, and martial prowess.</p>
                <h4 class="h6 text-white mt-3">Notable Feats</h4>
                <p>Barristan's list of legendary deeds is vast. He ended the War of the Ninepenny Kings by slaying Maelys the Monstrous in single combat. He rescued King Aerys II single-handedly during the Defiance of Duskendale by infiltrating the Dun Fort at night. He also avenged Lord Commander Hightower's wound by defeating Simon Toyne, the leader of the Kingswood Brotherhood.</p>
                <h4 class="h6 text-white mt-3">His Fate</h4>
                <p>Unlike his brothers, Barristan survived the Rebellion. He fought fiercely at the Battle of the Trident but was severely wounded. Robert Baratheon, respecting his honor, spared him and named him his own Lord Commander. In the current book timeline, he was dismissed by Joffrey Baratheon and crossed the Narrow Sea. He is currently alive in Meereen, serving Queen Daenerys Targaryen.</p>
            <#elseif normalized?contains("oswell") || normalized?contains("whent")>
                <h4 class="h6 text-white mt-3">Background</h4>
                <p>A knight of House Whent, Ser Oswell was known for his dark sense of humor and his distinctive Kingsguard helm, which was adorned with a black bat with folded wings, the sigil of his house. He was a close confidant of Prince Rhaegar.</p>
                <h4 class="h6 text-white mt-3">Notable Feats</h4>
                <p>While less is written about his combat exploits compared to Dayne or Selmy, Oswell was heavily involved in the political maneuvering of the realm. He visited his brother, Lord Whent, to help orchestrate the massive Tourney at Harrenhal, which many believe was a secret shadow council organized by Prince Rhaegar to depose the Mad King.</p>
                <h4 class="h6 text-white mt-3">His Fate</h4>
                <p>Ser Oswell was the third Kingsguard stationed at the Tower of Joy. When Eddard Stark's forces arrived, Oswell was reportedly sharpening his sword on a whetstone. He died fighting the northern lords alongside Dayne and Hightower.</p>
            <#elseif normalized?contains("jon") || normalized?contains("darry")>
                <h4 class="h6 text-white mt-3">Background</h4>
                <p>Ser Jon Darry was an older, fiercely loyal member of the Kingsguard. House Darry was one of the most staunchly Targaryen-loyalist houses in the Riverlands. He was the brother of Ser Willem Darry, the man who would eventually smuggle a young Viserys and Daenerys Targaryen to safety in Braavos.</p>
                <h4 class="h6 text-white mt-3">Notable Feats</h4>
                <p>Specific combat feats for Jon Darry are not detailed in the lore, but his absolute devotion to his vows is his defining trait.</p>
                <h4 class="h6 text-white mt-3">His Fate</h4>
                <p>Ser Jon Darry rode out with Prince Rhaegar's royalist forces during Robert's Rebellion. He was killed in the mud of the Ruby Ford during the Battle of the Trident.</p>
            <#elseif normalized?contains("lewyn") || normalized?contains("martell")>
                <h4 class="h6 text-white mt-3">Background</h4>
                <p>Prince Lewyn was a member of the ruling house of Dorne, serving as the uncle to Doran, Elia, and Oberyn Martell.</p>
                <h4 class="h6 text-white mt-3">Notable Feats</h4>
                <p>During Robert's Rebellion, King Aerys became deeply paranoid and believed the Dornish had betrayed him. He essentially used Princess Elia as a hostage to force Prince Lewyn to take command of ten thousand Dornish spears and march them to the Trident to fight for the crown.</p>
                <h4 class="h6 text-white mt-3">His Fate</h4>
                <p>At the Battle of the Trident, Lewyn's forces engaged the armies of the Vale. He was mortally wounded during the chaos of battle. In his weakened state, he engaged in a final duel with Ser Lyn Corbray, who wielded the Valyrian steel sword Lady Forlorn, and was slain.</p>
            <#elseif normalized?contains("jaime") || normalized?contains("lannister")>
                <h4 class="h6 text-white mt-3">Background</h4>
                <p>The golden son of Lord Tywin Lannister, Jaime was appointed to the Kingsguard by Aerys II at the unprecedented age of fifteen. This was a calculated political move by the Mad King to rob Tywin of his prized heir and keep him as a hostage in King's Landing.</p>
                <h4 class="h6 text-white mt-3">Notable Feats</h4>
                <p>A natural prodigy with a blade, Jaime won his first melee at the age of thirteen. He rode against the Kingswood Brotherhood alongside his heroes, crossed swords with the Smiling Knight, and saved Lord Sumner Crakehall. For his bravery, he was knighted on the battlefield by Ser Arthur Dayne.</p>
                <h4 class="h6 text-white mt-3">His Fate</h4>
                <p>During the Sack of King's Landing, King Aerys commanded his pyromancers to ignite caches of wildfire hidden beneath the city and burn it to the ground. To save half a million innocent lives, Jaime broke his Kingsguard vows, killed the pyromancers, and drove his sword into the back of King Aerys, earning the despised moniker of the Kingslayer. In the current book timeline, he is alive but missing in the Riverlands after departing with Brienne of Tarth.</p>
            <#else>
                <h4 class="h6 text-white mt-3">Character Record</h4>
                <p>${character.name} holds the title “${character.title}.” This character fights with ${character.weapon} and is currently recorded as ${character.status?lower_case}.</p>
                <p class="text-secondary">Detailed lore can be added when more information becomes available.</p>
            </#if>

            <#if showActions>
                <div class="d-flex flex-wrap gap-2 mt-4">
                    <a class="btn btn-outline-light" href="/updateForm/${character.id?c}" style="border-color: #d4af37; color: #d4af37;">Update Character</a>
                    <a class="btn btn-outline-danger" href="/delete/${character.id?c}" onclick="return confirm('Delete this character?')">Delete Character</a>
                    <a class="btn btn-outline-light" href="/characters">Back to Gallery</a>
                </div>
            <#else>
                <a class="btn btn-outline-light mt-3" href="/characters/${character.id?c}">Open Character Page</a>
            </#if>
        </div>
    </article>
</#macro>
