"""500+ distinct academic seed topics, composed so every generation loop gets a
unique context (kills template repetition). Subjects are paired with generic,
always-sensible qualifiers, then deduped."""

_SUBJECTS = [
    "deep-sea hydrothermal vents", "monarch butterfly migration", "coral reef bleaching",
    "the printing revolution", "tardigrade cryptobiosis", "Byzantine mosaics",
    "the Dust Bowl migrations", "Mughal garden architecture", "the discovery of penicillin",
    "the Analytical Engine", "Polynesian wayfinding", "the Library of Alexandria",
    "C4 photosynthesis", "the Bauhaus school", "Antarctic ice cores", "the Silk Road",
    "octopus camouflage", "Renaissance perspective", "the Haber-Bosch process",
    "the suffrage movement", "neutron star collisions", "the domestication of wheat",
    "Gothic flying buttresses", "slime mold problem-solving", "the Harlem Renaissance",
    "plate tectonics", "Ottoman miniature painting", "the human gut microbiome",
    "the Code of Hammurabi", "firefly bioluminescence", "the transcontinental railroad",
    "quantum tunneling", "Indigenous controlled burns", "the fall of Constantinople",
    "mycorrhizal fungal networks", "Impressionist light", "the abolitionist press",
    "volcanic island formation", "the invention of the telescope", "honeybee waggle dances",
    "medieval guilds", "CRISPR gene editing", "the Great Migration", "desert plant survival",
    "Japanese woodblock prints", "the Antikythera mechanism", "epigenetic inheritance",
    "the Hanseatic League", "glacial moraines", "the Federalist debates", "whale song",
    "Mesa Verde cliff dwellings", "the Green Revolution", "Sappho's poetry",
    "the gut-brain axis", "Roman aqueducts", "the Trail of Tears", "supernova nucleosynthesis",
    "Gutenberg's typography", "bird magnetoreception", "the 1918 influenza pandemic",
    "tide pool ecology", "Enlightenment salons", "permafrost carbon release",
    "Beethoven's late quartets", "the cotton gin", "fungal spore dispersal",
    "the Meiji Restoration", "dark matter and galaxy rotation", "Inca quipu",
    "the Marshall Plan", "cephalopod intelligence", "the Lascaux cave paintings",
    "antibiotic resistance", "the 1909 garment strikes", "river delta formation",
    "seed dormancy", "the Bracero Program", "auroras and solar wind", "Etruscan metalwork",
    "the eradication of smallpox", "kelp forest ecosystems", "the Federal Writers' Project",
    "earthquake early warning", "Romantic landscape poetry", "railway standard time",
    "ant colony foraging", "the Berlin Conference", "stem cell differentiation",
    "the Bayeux Tapestry", "ocean acidification", "New Deal mural programs",
    "comet tails", "the Gold Rush", "lichen as pollution indicators", "the Magna Carta",
    "neuroplasticity", "the Atlantic slave trade's abolition", "sand dune migration",
    "the Florentine wool trade", "vaccine cold chains", "the Underground Railroad",
    "Darwin's finches", "Himalayan uplift", "photovoltaic cells", "the Indian Ocean spice trade",
    "frog metamorphosis", "the Nuremberg trials", "subduction-zone volcanism",
    "Emily Dickinson's poetry", "sourdough microbiology", "the Apollo guidance computer",
    "saltmarsh carbon storage", "the Reformation pamphlet wars", "spider silk",
    "the Homestead Act", "El Nino cycles", "Vermeer and the camera obscura",
    "the Columbian Exchange", "migratory locust swarms", "Sumerian cuneiform",
    "the jet stream", "Mayan astronomy", "the cochlea and hearing", "the Erie Canal",
]

_QUALIFIERS = [
    "", "and its history", "and recent research", "in scientific study",
    "and its cultural impact", "and ongoing debates", "and its discovery",
    "and its global significance", "explained for a general reader",
]


def build_topics(n=500):
    out, seen = [], set()
    for q in _QUALIFIERS:
        for s in _SUBJECTS:
            t = s if not q else f"{s} {q}"
            if t not in seen:
                seen.add(t)
                out.append(t)
    return out[:n]


TOPICS_500 = build_topics(500)

if __name__ == "__main__":
    ts = build_topics(500)
    print(f"{len(ts)} topics; sample: {ts[0]!r}, {ts[200]!r}, {ts[-1]!r}")
