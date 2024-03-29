MERGE INTO Semester (id, year, name) KEY(id) VALUES (1, 1, 'Semestre 1'), (2, 1, 'Semestre 2'), (3, 2, 'Semestre 3'), (4, 2, 'Semestre 4') , (5,3,'Semestre 5'), (6,3,'Semestre 6');
MERGE INTO Category KEY(id) VALUES (1,'Chimie') , (2,'Electronique'),(3,'Géographie'),(4,'Informatique'),(5,'Mathématiques'),(6,'MIASHS'),(7,'Physique'),(8,'Sciences de la Terre'),(9,'Sciences de la Vie');
MERGE INTO TeachingUnit (id, name, code, description, semester, category) KEY(id) VALUES

--Chimie--
(1,'Structure Microscopique de la Matière','SPUC10','Atomes, ions, molécules, gaz, solides, sont les constituants et les états de la matière que nous découvrirons dans ce module.',1,1),
(2,'Réactions et Réactivites Chimiques','SPUC20','L’objectif de l’UE est de mobiliser les connaissances acquises par les étudiants dans les cours de physique-chimie du lycée, pour les approfondir afin d''aborder de nouvelles notions sur la structure et la réactivité chimique.',2,1),
(3,'Thermodynamique Chimique','SPUC21','La thermodynamique s’intéresse aux transferts thermiques et de travail. Pour compléter les notions vues au lycée à propos des chaleurs de combustion, de dissolution ou de changement d’états, il est nécessaire de définir un certain nombre de termes. ',2,1),
(4,'Chimie des Solutions','SPUC30','L’objectif de l’enseignement est l’acquisition de connaissances fondamentales en chimie des solutions aqueuses. La maîtrise des équilibres élémentaires de la chimie des solutions et de la chimie analytique permet d’appréhender la chimie de milieux plus complexes comme les milieux naturels (écosystèmes aquatiques, milieux physiologiques…).',3,1),
(5,'Chimie Organique Fonctionnelle I','SPUC31','Cette unité d’enseignement est destinée à mettre en place les notions de base pour comprendre la réactivité des molécules organiques et à acquérir un minimum de culture sur les réactions organiques de base.',3,1),
(6,'Matériaux I','SPUC32','Cette formation vise à former des techniciens de «haut niveau» aux sciences des matériaux, en introduisant les bases fondamentales de chimie et de physique nécessaires à l’élaboration, à la caractérisation et à la compréhension des propriétés des matériaux.',3,1),
(7,'Vision Macroscopique des Molécules','SPUC40','Le but de cette U.E. est de montrer comment les propriétés physico-chimiques de la matière à l’échelle macroscopique émergent de sa nature microscopique (atomes, molécules etc.) et du très grand nombre de particules qui la constitue (de l’ordre du nombre d’Avogadro).',4,1),
(8,'Matériaux II','SPUC41','Cette formation vise à approfondir des connaissances déjà acquises pour les techniciens de haut niveau aux sciences des matériaux.',4,1),
(9,'Chimie Organique Fonctionnelle II','SPUC42','Acidité et basicité dans les composés organiques. Chimie des des dérivés du benzène: Substitution électrophile aromatique, substitution nucléophile aromatique, addition-élimination, Résonance magnétique nucléaire du proton et du carbone 13. Spectroscopie d''infra-rouges.',4,1),
(10,'Bloc de Chimie Expérimentale','SPUC43','Cette formation permet d''acquérir les compétences professionnelles et le savoir-faire de base en analyse organique, en particulier ceux d''un technicien supérieur : Analyser les risques chimiques, Synthétiser, séparer, purifier et caractériser un produit de réaction.',4,1),

--Electronique--
(11,'Electronique Numérique - Bases','SPUE10','Ce cours d’introduction à l’électronique numérique est le premier d’une série de trois dédiés à l’apprentissage de la conception de circuits numériques.',1,2),
(12,'Electronique Analogique','SPUE20','La licence d''électricité et d''électronique, option électronique analogique et microélectronique est à la fois un approfondissement et un élargissement des connaissances en électronique enseignées dans les formations « Bac + 2 ». ',2,2),
(13,'Communication sans fil','SPUE21','Formation aux métiers des réseaux informatiques et des infrastructures de télécommunications, développant une double spécialité en réseaux sans fil et en cybersécurité, et préparant les étudiants à des emplois de techniciens supérieurs et de cadres intermédiaires.',2,2),
(14,'Automatique - Introduction','SPUE30','Approfondir les connaissances scientifiques des étudiants issus de formations technologiques, dans le domaine de l’Electronique, de l''Energie électrique ou de l’Automatisme, afin de renforcer leur autonomie en matière d’étude et de conception de systèmes. Appréhender le côté réel des systèmes (modélisation des imperfections réelles) et comprendre l''approche théorique et de simulation associée.',3,2),
(15,'Système Embarqué I','SPUE31','Les systèmes embarqués se caractérisent par une étroite cohabitation entre matériel et logiciel. Ils spécifient de nombreuses propriétés non fonctionnelles liées à la consommation d’énergie, au coût, à la portabilité, au temps réel, à la sûreté de fonctionnement et l''interopérabilité. ',3,2),
(16,'Physique des Captéurs','SPUE32','La physiue des captéurs, par un enseignement généraliste, permet d''acquérir de très bonnes connaissances de méthodologies innovantes dans des domaines variés couvrant l''environnement, le médical, le spatial et l''industrie. ',3,2),
(17,'Système Optimisé en Energie','SPUE40','La formation dispensée dans la licence professionnelle Systèmes Thermiques - Efficacité Énergétique - Énergies Renouvelables vous ouvre les portes d’un secteur en pleine expansion et porteur d’avenir.',4,2),
(18,'Electronique Analogique Avancée','SPUE41','Ce cours a pour bout d''approfondir les connaissances déjà acquises en Electronique Analogique',4,2),
(19,'Architecture des Processeurs','SPUE42','L''objet de ce cours est de présenter les principes fondamentaux d''architecture des ordinateurs et des systèmes d''exploitation : Après quelques bases de logique propositionnelle, nous étudierons la composition matérielle d''un ordinateur et la façon dont celui-ci fonctionne. Nous partirons des fondamentaux : portes, logique anarchique, puis évoluerons via la logique en tranches et circuits séquentiels jusqu''à la construction d''une carte mère et à l''exécution des programmes.',4,2),
(20,'Systèmes Embarqués II','SPUE43','Ce cours a pour bout d''approfondir les connaissances déjà acquises en Système Embarqué',4,2),

(117,'Mise à niveau','SL/EO5',' ',5,2),
(118,'VHDL', 'SL/EO51','Etudiants issus du portail SF parcours Electronique',5,2),
(119,'Méthodologie', 'SL/EO52','Etudiants diplomés de l''IUT ou d''une autre formation Bac +2',5,2),
(120,'Outils mathématiques, algorithmique & langage C', 'SL/E51',' ',5,2),
(121,'Electronique de puissance & systèmes triphasés', 'SL/E52',' ',5,2),
(122,'CAO & composants', 'SL/E53',' ',5,2),
(123,'Signaux systèmes à temps continu', 'SL/E54',' ',5,2),

(124,'Electronique analogique & TP', 'SL/E61',' ',6,2),
(125,'Signaux systèmes à temps discrets & phénomènes aléatoires', 'SL/E54',' ',6,2),
(126,'Ondes', 'SL/E54',' ',6,2),
(127,'Systèmes à microprocesseurs & GRAFCET', 'SL/E54',' ',6,2),
(128,'Projet & Réalisation', 'SL/E54',' ',6,2),



--Geographie--
(21,'Decouverte I','SPUGDE10','Cette UE aborde l''histoire des statistiques, en présente les sources, puis elle souligne l''enjeu de la production, et de la critique de données pour le géographe. ',1,3),
(22,'Decouverte II','SPUGDC10','Cette UE approfondit les connaissances traitées en Decouverte I',1,3),
(23,'Disciplinaire I','SPUGDI10','Cette formation assure une formation généraliste dans le domaine de l''organisation, du fonctionnement et de la gestion des territoires et des écosystèmes. ',1,3),
(24,'Decouverte III','SPUGDE20','Cette UE approfondit ulterieurment les connaissances traitées en Decouverte I et Decouverte II',2,3),
(25,'Decouverte IV','SPUGDC20','Cette UE approfondit les connaissances traitées dans les semestres précedents',2,3),
(30,'Disciplinaire II','SPUGDI20','Cette formation assure une formation généraliste dans le domaine de l''organisation, du fonctionnement et de la gestion des territoires et des écosystèmes.',2,3),
(26,'Disciplinaire III','SPUGDI30','Cette formation assure une formation généraliste dans le domaine de l''organisation, du fonctionnement et de la gestion des territoires et des écosystèmes.',3,3),
(27,'Disciplinaire IV','SPUGDI31','Cette formation assure une formation généraliste dans le domaine de l''organisation, du fonctionnement et de la gestion des territoires et des écosystèmes.',3,3),
(28,'Disciplinaire V','SPUGDI32','Cette formation assure une formation généraliste dans le domaine de l''organisation, du fonctionnement et de la gestion des territoires et des écosystèmes.',3,3),
(29,'Appofondissement hors géographie I','SPUGDE33','La formation a pour objectif de doter les étudiants de connaissances théoriques et des savoir-faire techniques dans le domaine géographie et aménagement et de leur proposer une ouverture vers au moins une autre discipline afin de les préparer dans des conditions optimales à différents champs professionnels (Cf. insertion professionnelle).',3,3),
(31,'Disciplinaire VI','SPUGDI40','Cette formation assure une formation généraliste dans le domaine de l''organisation, du fonctionnement et de la gestion des territoires et des écosystèmes.',4,3),
(32,'Disciplinaire VII','SPUGDI41','Cette formation assure une formation généraliste dans le domaine de l''organisation, du fonctionnement et de la gestion des territoires et des écosystèmes.',4,3),
(33,'Disciplinaire VIII','SPUGDI42','Cette formation assure une formation généraliste dans le domaine de l''organisation, du fonctionnement et de la gestion des territoires et des écosystèmes.',4,3),
(34,'Approfondissement hors géographie II','SPUGDE40','La formation a pour objectif de doter ulterieurment les étudiants de connaissances théoriques et des savoir-faire techniques dans le domaine géographie  ',4,3),

--Informatique--
(35,'Bases de l''informatique','SPUF10','Introduction à l''informatique',1,4),
(36,'Introduction à l''informatique par le web','SPUF11','Cours de découverte de la science informatique à travers de thématiques concrètes issues du web',1,4),
(37,'Systeme I: Unix et programmation shell','SPUF20','L''objectif de ce cours est d''acquérir une certaine autonomie sous un environnement GNU/Linux et en programmation de scripts shell',2,4),
(38,'Programmation imperative','SPUF21','Ce cours est une introduction à la programmation impérative dans le langage Python',2,4),
(39,'Structures de données et programmation C','SPUF30','Ce cours a pour objectif d''introduire les structures de données les plus classiques en s''appuyant sur le langage de programmation bas niveau C.',3,4),
(40,'Bases de données','SPUF31','L''objectif de ce cours est d''apprendre à créer et manipuler des bases de données relationnelles et de comprendre les problèmes qui y sont liés. ',3,4),
(41,'Outils formels de l''informatique','SPUF32','Initiation à l''étude des fondements théoriques de l''informatique.',3,4),
(42,'Algorithmique I','SPUF40','Le but du cours est d''introduire l’étudiant à l’algorithmique, en mettant l''accent sur les stratégies de conception d''un algorithme efficace. ',4,4),
(43,'Réseaux et télécommunication','SPUF41','Ce cours présente les principes de fonctionnement des réseaux de téléommunication depuis le signal à transmettre jusqu''à la réalisation de réseaux locaux. ',4,4),
(44,'Systèmes II: mécanismes internes des systèmes d''exploitation','SPUF42','Ce cours présente les principaux concepts d''un système d''exploitation permettant d''orchestrer l''exécution de plusieurs processus en parallèle. Ces concepts sont mis en oeuvre en Python pour la réalisation d''un mini-projet de type ''mini-shell''. ',4,4),
(45,'Introduction aux systèmes intelligents','SPUF43','Ce cours introductif comporte deux parties, la première dédiée à l’intelligence collective et la seconde à l’intelligence individuelle.',4,4),
(46,'Technologies du web','SPUF44','Ce cours présente le fonctionnement du web, ainsi que la production de pages web statiques et la programmation de pages web dynamiques, tant du côté client que serveur.',4,4),
(96, 'Programmation fonctionnelle','InfoS51','Ce cours est une introduction à la programmation fonctionnelle typée. Le langage support pour le cours est OCaml.',5,4),
(97,'Programmation et conception orientée objet','InfoS52',' ',5,4),
(98,'Cryptographie et calcul symbolique','InfoS53',' ',5,4),
(99,'Automates et languages','InfoS54',' ',5,4),
(100,'Architecture machine','InfoS55',' ',5,4),
(101,'Travail encadré d''étude, de recherche et de développementé','InfoS61',' ',6,4),
(102,'Paradigmes et interprétation','InfoS62',' ',6,4),
(103,'Méthodes de simulation informatique','InfoS63',' ',6,4),
(104,'Grands concepts de l''Informatique','InfoS64',' ', 6,4),
(105,'Compilation','InfoS65',' ',6,4),
(106,'Algorithmique II','InfoS66',' ',6,4),

--Mathematiques--
(47,'Fondements I','SPUM11','Généralités sur les fonctions d’une variable réelle à valeurs réelles; Limites et continuité des fonctions d’une variable réelle à valeurs réelles, Dérivabilité, opérations sur les dérivées, extrema, Fonctions injectives, surjectives, bijectives, bijection réciproque, Résolution de systèmes d’équations linéaires (n, p), Calcul matriciel',1,5),
(48,'Méthodes : approche continue','SPUM12','Le cours abordera des notions de base des mathématiques et des méthodes mathématiques utiles pour tous les enseignements scientifiques du portail Siences et Technologies. Les connaissances étudiées relèvent essentiellement des fonctions définies sur des intervalles de R.',1,5),
(49,'Complements I','SPUM13','Le but de ce cours est de voir (ou revoir) avec une rigueur mathématique plus poussée qu’au lycée certains outils de base des mathématiques. En particulier, on s’attache à donner des définitions précises et formelles des notions et on insiste sur les démonstrations.',1,5),
(50,'Fondements II','SPGM21','Espaces vectoriels; Familles de vecteurs; Exemples d’espaces vectoriels; Applications linéaires en dim finie et matrices; Calcul intégral; Équivalents et notations de Landau.',2,5),
(51,'Méthodes : approche discrète','SPUM22','Systèmes d’équations linéaires; Noyau d’une matrice, image d’une matrice, rang d’une matrice, théorème du rang; Vecteurs de R n; Opérations algébriques sur les matrices; Diagonalisation de matrices et applications; Suites et séries numériques',2,5),
(52,'Complements II','SPUM23','Un des objectifs de ce cours est de donner des preuves précises de certains résultats admis par ailleurs. Exemple : vous savez (ou vous avez utilisé sans le savoir déjà quand vous étiez en terminale) que “toute fonction continue admet des primitives “.',2,5),
(53,'Fondements III','SPUM30','Dans la partie Algèbre de ce cours, nous abordons un problème classique en Algèbre linéaire : étant donné une application linéaire, nous nous proposons de chercher des bases dans lesquelles la forme de la matrice de l’application linéaire est la plus simple possible, en particulier diagonale. Dans la partie Analyse de ce cours, sont abordées les notions d’intégrale généralisée et de séries numériques, concepts de base en Analyse.',3,5),
(54,'Compléments d''Analyse','SPUM31','Espaces vectoriels normés, Espaces métriques complets, Espaces métriques compacts, Espaces vectoriels normés de dimension finie, Connexité, convexité, Courbes planes, Courbes en coordonnées polaires',3,5),
(55,'Compléments d''Algèbre','S4C52','Ce cours présente les notions fondamentales de l’Algèbre (groupe, anneau, corps, espaces vectoriels, morphismes). Ces notions sont illustrées par de multiples applications en Arithmétique et en Géométrie.',3,5),
(56,'Méthodes : Mathématiques et ingénierie','S4C53','Fonctions d’une et de plusieurs variables, continuité, dérivées partielles, gradient, formule de Taylor, différentielle, opérateurs différentiels. Intégrales multiples, intégrales curvilignes. Courbes planes et gauches, surfaces. Méthodes de résolutions des Équations Différentielles Ordinaires, initiation aux Équations aux Dérivées Partielles.',3,5),
(57,'Méthodes : approche géométrique','S4C54','Espaces vectoriels, applications linéaires; Formes quadratiques, Lagrange, définies positive et négative; Normes, distance, produit scalaire; Méthode des moindres carrés, projection orthogonale, matrice de projection; Orthogonalisation Gramm-Schmidt, décomposition QR; Décomposition de l’espace en sous-espaces vectoriels orthogonaux; Décomposition en valeurs singulières; Régression (Méthode des moindres Carrés Ordinaires, Analyse en Composantes Principales), clustering, covariance empirique.',3,5),
(58,'Analyse','S4C58','Suites et séries de fonctions; Séries entières; Séries de Fourier; Calcul différentiel',4,5),
(59,'Probabilités et Introduction à la Statistiques','S4C59','Ce cours présentera les bases des probabilités discrètes et continues, et des statistiques. Nous partirons de problèmes de la vie courante (jets de dés, jeux de cartes, jeux de hasard, sondages...) pour formaliser de manière rigoureuse les définitions, les modèles et les théorèmes fondamentaux en probabilité et en statistiques.',4,5),
(60,'Algèbre','S4C60','Théorie des groupes: Relation d’équivalence et ensemble-quotient. Algèbre commutative: Généralités sur les anneaux commutatifs; Divisibilité dans les anneaux; Anneaux de polynômes; Eléments algébriques. Réduction des endomorphismes:  Caractérisation des endomorphismes diagonalisables',4,5),
(61,'Résolution numérique des systèmes d''équations linéaires et non-linéaires','S4C61','Le but de cette unité d’enseignement est d’étudier théoriquement et de savoir programmer quelques méthodes de base du calcul et de la simulation numérique omniprésentes dans les applications. Ce cours aborde les algorithmes de résolution des systèmes linéaires et non linéaires ainsi que le calcul numérique des valeurs propres d’une matrice.',4,5),
(62,'Méthodes : approche aléatoire','S4C62','Ce module sera une introduction aux Probabilités et aux Statistiques avec des exemples pour illustrer les différentes notions abordées. ',4,5),
(134,'Calcul différentiel et Géométrie Différentielle','UEMS51','Ce cours présente:
•  Calcul Différentiel sur un espace vectoriel normé de dimension finie.
•  Courbes, surfaces et volumes paramétrés. Vecteurs et plans tangents.
• Fonctions C, inversion locale, fonctions implicites. Graphes, courbes de niveau. Introduction à la géométrie différentielle : courbes et surfaces, multiplicateurs de Lagrange. Courbes et surfaces (courbure, torsion), éventuellement théorème de Gauss sur la courbure totale. ',5,5),
(135,'Statistique et Modélisation','UEMS52','Ce module a pour objectif d’introduire les notions d’estimation et de tests avec la mise en œuvre sur les problèmes de régression linéaire.',5,5),
(136,'Intégration et Théorie de la Mesure','UEMS53','Ce module a pour objectif de presenter:
• Rappels sur l’intégrale de Riemann et calculs d’intégrales.
•  Dénombrabilité.
• Théorie de la mesure - mesures de Lebesgue et de comptage.
• Fonctions mesurables et intégration. Théorèmes limites.
• Intégrales multiples.
• Intégrales à paramètres,
•  transformée de Fourier (introduction).
•  Éventuellement espace L',5,5),
(137,'Équations Différentielles','UEMS54','Ce module a pour objectif de presenter:
• Rappels sur les équations différentielles d’ordre 1.
•  Systèmes différentiels / équations différentielles linéaires à coefficients constants / exponentielle des matrices.
•  Portraits de phase des systèmes linéaires dans le plan.
•  Équations différentielles non-linéaires, théorème de Cauchy-Lipschitz et solutions maximales, variables séparables. ',5,5),
(138,'Algèbre et Géométrie','UEMS55','Ce module a pour objectif de presenter:
•   Dualité linéaire,
•  Réduction des endomorphismes autoadjoints ,
• Applications ,
•  Géométrie affine  ',5,5),
(139,' Analyse Économétrique','UEMMS51','Ce module a pour objectif de presenter:  Ajustement par la méthode des Moindres Carrés Ordinaires (MCO) Introduction des probabilités dans le modèle  Application de la théorie des Tests au modèle linéaire.  ',5,5),
(140,'Systèmes Dynamiques, Calcul Différentiel et Optimisation','UEMS52','Ce module a pour objectif de presenter:
•  Calcul différentiel,
•  Théorie des équations différentielles ordinaires,
•  Approximation numérique des équations différentielles ordinaires.',5,5),

(141,'Probabilités et ses Applications','UEMS61','Ce module a pour objectif de presenter:
•   Espace de probabilité,
•  définition des variables aléatoires,
•  Notion de densité de probabilité par rapport à une mesure dominante,
•  Espérance,
•   variance,
•   Notion de fonction de répartition,
•   Simulation de variables aléatoires par inversion de la fonction de répartition,
•  Indépendance d’événements, Calculs de loi,
•  Convergence de variables aléatoires,
•  Les grands théorèmes limites ,
• Applications à l’approximation d’une intégrale par la méthode de Monte-Carlo,
•  Introduction à la Statistique.',6,5),
(142,'Algèbre et Algèbre Effective','UEMS62',' Groupes (Z/nZ),  Représentation des groupes abéliens finis. Lemme d’extension des caractères, Polynômes, Extensions de corps, Démonstration de la loi de réciprocité quadratique, Codes correcteurs d’erreur : distance de Hamming, distance minimale d’un code linéaire.',6,5),

(143,'Introduction à l’Analyse Fonctionnelle','UEMS63', 'Topologie des espaces métriques, Espaces de Banach, Inégalités, Transformée de Fourier sur L,  Approximation uniforme.',6,5),

(144,'Approximation numérique des fonctions, des intégrales et des équations différentielles ordinaires','UEMS64','Le but de cette unité d’enseignement est de consolider et d’élargir les acquis des étudiants sur les méthodes de base du calcul numérique et de la simulation numérique. Chaque concept abordé sera motivé par un exemple concret tiré de la vie courante. Cette Unité d’Enseignement sera également l’occasion de faire le point sur le lien des Mathématiques et leurs applications. ' ||
 'Des illustrations numériques en Python sont proposées pour mettre en œuvre les algorithmes étudiés.',6,5),
(145,'Analyse Complexe','UEMS65', ' Séries entières et fonctions analytiques, Fonctions holomorphes, conditions de Cauchy-Riemann, théorème d’holomorphie sous le signe intégral,  Intégrales curvilignes, primitives. Formules intégrales de Cauchy et conséquences, Points singuliers, fonctions méromorphes, Calcul des résidus, Théorème de l’application conforme.',6,5),
(146,'Analyse, Probabilités et Statistique','UEMS62D',' ',6,5),
(147,' Probabilités','UEMS61', 'Chaque notion introduite doit être motivée par une fin applicative en économie, assurance, finance, biologie, physique...',6,5),
(148,' Suites de Fonctions, Calcul Intégral et Séries de Fourier','UEMMS62', 'Polynômes, Rappels sur les calculs d’intégrales en dimension 1,  Intégrales multiples, Méthodes déterministes de calcul approché, Espaces L, Suites de fonctions, Intégrales à paramètres, transformée de Fourier, Séries de Fourier.',6,5),

--MIASHS--
(63,'Economie-Gestion','SPUA10','Elle vise à doter les étudiants d’une formation solide en théorie économique, en gestion et en techniques quantitatives. Elle permet l’acquisition de connaissances économiques et managériales indispensables à la compréhension du positionnement stratégique et de l’environnement de l’entreprise, à l’analyse des comportements des agents économiques, du fonctionnement des marchés, etc.',1,6),
(64,'Economie-Gestion','SPUA20','Elle vise à doter les étudiants d’une formation solide en théorie économique, en gestion et en techniques quantitatives. Elle permet l’acquisition de connaissances économiques et managériales indispensables à la compréhension du positionnement stratégique et de l’environnement de l’entreprise, à l’analyse des comportements des agents économiques, du fonctionnement des marchés, etc.',2,6),
(65,'Economie-Gestion','SPUA30','Elle vise à doter les étudiants d’une formation solide en théorie économique, en gestion et en techniques quantitatives. Elle permet l’acquisition de connaissances économiques et managériales indispensables à la compréhension du positionnement stratégique et de l’environnement de l’entreprise, à l’analyse des comportements des agents économiques, du fonctionnement des marchés, etc.',3,6),
(66,'Introduction R','SPUA31','Ce document est une introduction à l’utilisation du logiciel libre de traitement de données et d’analyse statistique R. Il se veut le plus accessible possible, y compris pour ceux qui ne sont pas particulièrement familiers avec l’informatique.',3,6),
(67,'Economie-Gestion','SPUA40','Elle vise à doter les étudiants d’une formation solide en théorie économique, en gestion et en techniques quantitatives. Elle permet l’acquisition de connaissances économiques et managériales indispensables à la compréhension du positionnement stratégique et de l’environnement de l’entreprise, à l’analyse des comportements des agents économiques, du fonctionnement des marchés, etc.',4,6),
(68,'Mathématiques pour la Finance','SPUA41','Formation centrée sur les mathématiques appliquées, en particulier l’optimisation, l''analyse, les probabilités, la statistique et les méthodes numériques. Elle comprend également de nombreux enseignements d’économie, de finance, et d’informatique, ainsi que des enseignements d’ouverture, dans des proportions dépendant des choix de parcours et d’options.',4,6),
(149,'Marketing et Environnement de l''Entreprise','SPUAM1',' ',5,6),
(150,' Systèmes & Réseaux ','SPUAM2',' ',5,6),
(151,'Conception Objet et Programmation','SPUAM3',' ',5,6),
(129,'Découverte du Métier 5','SPUAM4',' ',5,6),
(130,'Comptabilité & Management de l’Innovation','SPUAM5',' ',6,6),
(131,'Approfondissement Bases de Données','SPUAM6',' ',6,6),
(132,'Analyse des besoins et application Web','SPUAM7',' ',6,6),
(133,'Découverte du Métier 6','SPUAM8', ' ',6,6),

--Physique--
(69,'Mécanique I','SPUP10','La Licence de Mécanique propose une formation orientée principalement vers la modélisation, la simulation numérique et l’expérimentation en mécanique. Elle met l’accent sur les acquis fondamentaux en mécanique, mathématiques, informatique, physique, nécessaires pour assurer la pluridisciplinarité qui caractérise la mécanique, science du mouvement.',1,7),
(70,'Optique I','SPUP20','L''idée de cette UE est de permettre aux étudiants d''aborder des systèmes optiques complexes utilisant des concepts tels que la polarisation de la lumière, la diffraction ou l''optique guidée. L’objectif de cette UE est donc d’une part de consolider les acquis de L2 et d’autre part de compléter la formation des étudiants par des notions nouvelles.',2,7),
(71,'Mécanique II','SPUP21','La Licence de Mécanique propose une formation orientée principalement vers la modélisation, la simulation numérique et l’expérimentation en mécanique. Elle met l’accent sur les acquis fondamentaux en mécanique, mathématiques, informatique, physique, nécessaires pour assurer la pluridisciplinarité qui caractérise la mécanique, science du mouvement.',2,7),
(72,'Electromagnétisme I','SPUP30','Cette UE a pour but d''introduire les bases de l''électromagnétisme, du calculs de champs statiques à la propagation des ondes électromagnétiques. Elle doit permettre aux étudiants de se familiariser avec la notion de champs (et leurs outils mathématiques) et aussi avec les notions touchant la propagation des ondes.',3,7),
(73,'Thermodynamique I','SPUP31','Le premier volet de cette UE vise à consolider les connaissances de thermodynamique acquises en L2.',3,7),
(74,'Outils et Méthodes I','SPUP32','Etudes des outils de résolutions de problemes physiques et méthodes de recherches.',3,7),
(75,'Electromagnétisme II','SPUP40','Cette UE a pour but d''introduire les bases de l''électromagnétisme, du calculs de champs statiques à la propagation des ondes électromagnétiques. Elle doit permettre aux étudiants de se familiariser avec la notion de champs (et leurs outils mathématiques) et aussi avec les notions touchant la propagation des ondes.',4,7),
(76,'Ondes','SPUP41','A la fin de cette UE l''étudiant devra avoir compris les bases de la physique ondulatoire, aussi bien pour la propagation en milieu solide que pour des ondes électromagnétiques. ',4,7),
(77,'Mathématiques pour la Physique I','SPEP41','Rappels, espace vectoriel et espace vectoriels de fonctions, intégration en physique, convergence en physique, séries de Fourier, transformées de Fourier et de Laplace, distributions, équations aux dérivées partielles, convolution, corrélations et théories des probabilités. Ces méthodes seront appliquées grâce à des exemples en relation avec les autres enseignements du parcours.',4,7),
(78,'Mécanique  III','SPUP41','La Licence de Mécanique propose une formation orientée principalement vers la modélisation, la simulation numérique et l’expérimentation en mécanique. Elle met l’accent sur les acquis fondamentaux en mécanique, mathématiques, informatique, physique, nécessaires pour assurer la pluridisciplinarité qui caractérise la mécanique, science du mouvement.',4,7),
(79,'Outils et Méthodes II','SPUP43','tudes des outils de résolutions de problemes physiques et méthodes de recherches.',4,7),
(95,'Outils et Méthodes 2D','SPUP44','tudes des outils de résolutions de problemes physiques et méthodes de recherches.',4,7),
(107,'Système dynamiques','SLZP51','Découverte expérimentale puis approche théorique de la notion de modes propres de vibrations. Application à des systèmes mécaniques simples (exp. et théorie): le pendule forcé paramétriquement par percussions, forçage paramétrique percussionnel de deux oscillateurs couplés, forçage paramétrique percusionnel d''un double pendule. Représentation du mouvement dans l''espace des phases (sections de Poincaré). Analogie mécanique d''un système à deux niveaux en mécanique quantique.',5,7),
(108,'Electromagnétisme III','SLZP52','Cette UE est constituée de : Matériaux diélectriques, Materiaux magnétiques, Equations de Maxwell dans les matériaux, Propagation d''ondes guidées.',5,7),
(109,'Thermodynamique III','SLZP53','Notion d’entropie statistique: Distribution de probabilité, entropie. Quelques exemples  Espace des phases, état microscopique, densité d''états. Distribution statistique d''équilibre, contraintes macroscopiques, entropie de Boltzmann.',5,7),
(110,'Méthodes numériques','SLZP54','Le but recherché est l''utilisation de l''outil informatique pour résoudre ou simuler des problèmes de Physique. ( Equations différentielles, Méthodes de Monte Carlo, Dynamique moléculaire',5,7),
(111,'Outils mathématiques','SLZP55','Analyse: Fonctions Gamma et signaux discontinus, Convolution, Transformation de Fourier, Séries de Fourier et échantillonnage. Probabilités: Eléments de base en théorie des probabilités, Convergences et théorèmes limites, Introduction aux processus aléatoires. ',5,7),
(112,'Méthodes expérimentales','SLZP56','L''objectif de cette UE est d''apprendre aux étudiants les techniques et les concepts à la base de la physique expérimentale. L''enseignement est basé sur des manipulations se déroulant sur plusieurs séances, ce qui permettra aux étudiants d''affronter les différents aspects du travail avec un certain recul et des pauses de réflexion. Le but est de transmettre un savoir-faire technique et méthodologique (manipulation, traitement des données, tenue d''un cahier d''expérience, etc...) que les étudiants pourront réinvestir dans des situations nécessitant l''acquisition de données ou de mesures (recherche scientifique, applications industrielles ou autre).',5,7),
(113,'Mécanique Quantique II','UEF1','Cette UE est constituée de : Formalisme-Postulats, L''Opérateur Hamiltonien - Evolution temporelle, Les opérateurs position et quantité de mouvement. Comportement spatial, L''Oscillateur Harmonique à 1 dimension , Physique à 3 dimensions-Potentiels centraux. ',6,7),
(114,'Mécanique des Milieux Continus','UEF2','L''objectif de cette UE est d''apprendre aux étudiants: La Mécanique du solide déformable et la Dynamique des fluides.',6,7),
(115, 'Optique II','UEF3','L''objectif de cette UE est d''apprendre aux étudiants: Diffraction, ltrage en lumière cohérente,  Cohérence, Propagation dans la matière.',6,7),
(116,'Projets tuteuré en laboratoire','UEF4','Le but de ces projets en laboratoire est d''offrir la possibilité aux étudiants souhaitant poursuivre leur formation au sein d''un master de recherche d''avoir un premier contact avec le travail de recherche en rejoignant une équipe d''un des laboratoires de recherche de l''Université de Nice-Sophia Antipolis.',6,7),

--Sciences de la vie--

(80,'Découverte des sciences de la Terre','SPUT10','Cette Unité d’Enseignement vise à donner une vision globale du système Terre en abordant à la fois les enveloppes externes (atmosphère, eau, glace) et l’intérieur de la Terre.',1,8),
(81,'Structure et Dynamique de la Terre','SPUT20','Cette Unité d’Enseignement vise à donner une vision globale du système Terre à travers sa structure mais aussi la façon dont elle évolue',2,8),
(82,'Atmosphère, Océan, Climats','SPUT22','L’objectif est d’introduire les notions de bases permettant d’aborder les cycles et transferts dits externes (océans, atmosphère, climat) et internes (proche sous-sol et grandes profondeurs) de la Terre.',2,8),
(83,'Atmosphère, Océan, Climats','SPUT30','L’objectif est d’introduire les notions de bases permettant d’aborder les cycles et transferts dits externes (océans, atmosphère, climat) et internes (proche sous-sol et grandes profondeurs) de la Terre.',3,8),
(84,'Le Temps en Géosciences','SPUT31','Etude des sciences à travers le temps',3,8),
(85,'Physique de la Terre','SPUT32','Comprendre la Terre et l''univers, de l''origine de la vie à l''exploration des planètes, des risques sismiques à la gestion de l''environnement.',3,8),
(86,'Matériaux Terrestres','SPUT33','Ce cours aura pour but de présenter l''importance des géomatériaux à travers leur organisation structurale microscopique et les relations entre cette structure et leurs propriétés pour comprendre les processus géochimiques et géophysiques.',3,8),
(87,'Géologie Structurale et Tectonique','SPUT40','L''UE traite, aussi bien de façon théorique que par des exemples concrets et des applications, les thématiques fondamentales autour des environnements sédimentaires actuels et anciens tout en intégrant les phénomènes diagénétiques en s’appuyant sur l’analyses de faciès sédimentaires et de la pétrographie',4,8),
(88,'Formation et Evolution des Bassins Sédimentaires','SPUT41','Le but de cette UE est de fournir aux futurs géologues l’illustration des concepts de base et des méthodes spécifiques de l’étude des bassins sédimentaires dans leur contexte géodynamique.',4,8),
(89,'Géomécanique','SPUT42','Dans ce cours, on apporte les principes de base régissant la mécanique des milieux solides. L''application principale est la géomécanique et le comportement des roches (élasticité, critères de rupture, joints rocheux).',4,8),
(90,'Du Paysage à la Carte','SPUT43','Etude du paysage et des reliefs',4,8),

--Sciences de la Terre--
(91,'Org. Mecanismes Moléculaires Cellules Eucaryotes','SPUV100','L''objectif de cet enseignement est de donner aux étudiants une bonne connaissance de la structure, de l''activité et de la fonction des macromolécules du vivant.',1,9),
(92,'Génétique. Evolution. Origine Vie et Biodiversité','SPUV101','La génétique étudie les mécanismes de l''hérédité, à l''échelle de la cellule, des individus et des populations, comment l''information est transmise du gène au phénotype.',1,9),
(93,'Physiologie. Neurologie. Enzymologie.','SPUV200','Etude fonctionnement des parties du corps, c''est-à -dire sur la façon dont celles-ci jouent leur rôle et permettent le maintien de la vie.',2,9),
(94,'Diversité du Vivant','SPUV201','Propriétés du vivant. Historique de la classification. Présentation des principes de la phylogénie et l’arbre du vivant. Les caractères apomorphiques de certains clades, comme ceux des Eumycètes, sont plus précisément énoncés.',2,9);

MERGE INTO Student (id, firstname, lastname, email, password) KEY(id) VALUES (1, 'Toto', 'Tata', 'toto@gmail.com', '$2a$10$fex0RS2Nshik5jiIyWXWC.6MmI6eZb9QW9NLr7gBPNyZTQqWhJIPm');

MERGE INTO Prerequisite KEY(parent_id, child_id) values (6, 8), (5, 9),(15,20),(21,22),(23,30),(30,26),(22,24),(24,25),(26,27),(29,34),(28,31),(31,32),(32,33),(37,44),(37,44),(47,50),(49,52),(50,53),
(69,71),(72,75),(74,79),(71,78),(42,106),(78,108),(73,109), (129,133);

MERGE INTO Career (id, student_id, name, shared, mainCareer) KEY(id) VALUES (1, 1, 'Mon parcours', false, true)