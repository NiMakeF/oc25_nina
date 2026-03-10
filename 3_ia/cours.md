*COURS :*

Roles possibles : system -> configuration initiale -> explique au model qui il est et comment agir,
    user -> la personne qui demande, nous , assistant -> répond au message, complète le text 
LLLM = Large Language Moel
Fine-tunning : permet de "raffiner", après entrainement de base
Pour un bote, aue cd soit de base ou un chat, c'essst la meme chose, il complète juste un texte
Tolkenization : sépare en diff parties (mots/morceaux de mots/signes de ponctuation)
A benchmark is a standard, reference point, or metric used to measure and compare the performance, quality, or value of products, services, or processes against industry best practices or competitors 
    problèmes : Contamination possible

*CYCLE DE VIE*
1) Collecte et préparation de données :
    séparation quoi utile/pas (enlever, filtrer données toxiques pour comportement,
    fausses/biaisées/répétition) -> réduit le temps d'entrainement, enlève données personnelles, permet meilleure quaité comunication. Permet de choisir quelles sources plus utiliser, plus/moins temps
2) Pré-entrainement 
3) Fine-Tuning et alignement ->
4) Evaluation
5) Déploiment :
    quantification (-> rendre modèle plus petit en codant avec moins de nuances (32bits à 16 b, à 8, etc)) et distilation (entrainer pasa du début, mais à partir d'un modèle "prof)