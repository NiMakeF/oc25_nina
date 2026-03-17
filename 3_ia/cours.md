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


*17.03.26 (0 = téta, ≠ zéro)*

Du gymnase retenu :
    - Python
    - Architecture des ordinateurs (CPU,GPU, mémoire et leur importance dans la performance)
    - Système d'équation (base de calculs dans les modèles)
    - Analysee (Chercher minimum d'une fonction, dérivation)
    - Probabilités (distribution du résultat, échantillage)

Fonctionnement du machine learning :
    Un modèle = une fonction à pparamètres f0 (Y = f0(X)) :
        - X = prompt, input de l'utilisateur
        - Y = réponse, sortie, prédiction...du modèle
        - f0 : Règle pour passer de l'input à l'output (écrit par un expert, à la main)
        - 0 : Variables qui paramétrisent les règles (appris pa la machine elle même -> on sait pas exactement ce qui s'y passe après, bcp de paramètres (mais sont appris des données)), dans la fonction f0(x) = ax+b -> 0 = (a,b)

        - Les données consistent de couples (Donnée entrée / donée sortie (Xi,Yi))

    Ex : X = text Y = text (text to text)
         X = text Y = image (text to image)
         X = text Y = video (text to video)
         X = disposition de pièces Y = coup suivant (jeu de GO)
         X = chaine de protéine Y = moddèle de protéie (strucute) 

    L'apprentissage consiste à trouver 0 tel que : Yi =~ f0(Xi) pour le maxi,u, de coupls de données
    
    Fonction de cout qui mesure la distance la prédiction du modèle et la vrai valeure pour minnimiser la distance : Ei (distance erreur) = F.coût(f0(Xi, Yi)) = (f0 (Xi) - Yi)^2

    Boucle d'entrainement : 
        1. Tirer un batch (Xi, Yi) depuis les données
        2. Calculer la prédiction Yi = f0(Xi) (- forward pass)
        3. Mesurer l'erreur Ei = F.coût(f0(Xi), Yi)
        4. Ajuster 0 pour réduire Ei (- backpropagation)
        5. Répéter
        => diminuer la distance entre résultat véritable et résultat donné par le modèle peu à peu => résultat + précis, l'entraine

    Le principe d'ajustement de poids : dérivation de fonction et optimisaation (si un seul paramètre)
    En dimension 1 :
        - Inversion de variavles : h(0) = F.coût(Yi, f0(Xi))
        - But : trouver le minimum : h'(0) = zéro
        - Problème : en général impossible à résoudre analytiquement 
        - Solution : algorithme d'optimisation numérique

    En pratique 0 est un vecteur.
    - La derivée se généralise au gradient, peu à peu
    - Dans le cas d'un réseau de neurone ce processus s'appelle backpropagation = > devient une série de calculs matriciels


Réseau de neuronne : 
    1 neuronne 
    couche de neuronnes
    deep learning

    X = (x1, x2, x3,..)
    Y = f(w1*x1 + w2*x2 + w3*x3,...)
    0 = (w1, w2, w3,...) (s'appelle les poids)

    les diff couches de neuronnes appliquent diff foncions (1 couche = 1 fonction) -> suite de fonctions
    