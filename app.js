console.log("app.js chargé");

const LONGUEUR_MIN = 5;
const LONGUEUR_MAX = 80;

const title =
[
    "Favorite anime character design ?",
    "Show me your OCs !",
    "How to draw hands pls TT",
    "Here's my most recent drawing !",
    "Advice for beginner artist ?",
    "Commission open ! (pls I need money)"
]

console.table(title);

const titleSorted = [...title].sort((a,b) => a.localeCompare(b));

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

console.log(titleSorted);
console.log(title[0]);
console.log(searchInTitle(title, "draw"));
console.log(titleExist(title, "show me your ocs !"));
console.log(titleValidation(title, "SHOW ME YOUR OCS !"))  