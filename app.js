console.log("app.js chargé");

const LONGUEUR_MIN = 5;
const LONGUEUR_MAX = 80;

const titles =
[
    "Favorite anime character design ?",
    "Show me your OCs !",
    "How to draw hands pls TT",
    "Here's my most recent drawing !",
    "Advice for beginner artist ?",
    "Commission open ! (pls I need money)"
]

console.table(titles);

const titleSorted = [...titles].sort((a,b) => a.localeCompare(b));

function searchInTitle(title, text)
{
    return title.filter((t) => t.toLowerCase().includes(text.toLowerCase()));
}

function titleExist(title, input)
{
    const exist = title.filter((t) => t.toLowerCase() === input.trim().toLowerCase())

    if(exist.length > 0) //exist is an array coz filter() returns an array
    {
        return true;
    }
    return false;
}

function titleValidation(title, input)
{

    const trimmedTitle = input.trim();

    if(trimmedTitle === "")
    {
        return "Le titre est obligatoire."
    }
    if(trimmedTitle.length < LONGUEUR_MIN)
    {
        return "Le titre doit faire au moins " + LONGUEUR_MIN + " caractères."
    }
    if(trimmedTitle.length > LONGUEUR_MAX)
    {
        return "le titre ne doit pas dépasser " + LONGUEUR_MAX + " caractères."
    }
    if(titleExist(title, input) === true)
    {
        return "Ce sujet existe déjà."
    }

    return "";
}



function subjectCard(title)
{
    const card = document.createElement("article");
    card.classList.add("carte-sujet");

    const h3 = document.createElement("h3");
    h3.textContent = title;

    card.append(h3);
    return card;
}

function displaySubject(list)
{
    const section = document.querySelector("#sujets");

    if(section === null)
    {
        return;
    }
    document.querySelectorAll(".carte-sujet").forEach((element) => element.remove());

    for (const title of list)
    {
        section.append(subjectCard(title));
    }
}

if (document.querySelector("#sujets")!== null)
{
    displaySubject(titles);
}