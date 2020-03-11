INSERT INTO Semester VALUES (1), (2), (3), (4);
INSERT INTO Category VALUES (1,'Chimie') , (2,'Electronique'),(3,'Géographie'),(4,'Informatique'),(5,'Mathématiques'),(6,'MIASHS'),(7,'Physique'),(8,'Sciences de la Terre'),(9,'Sciences de la Vie');
INSERT INTO TeachingUnit (id, name, code, description, semester, category) VALUES

--Chimie--
(1,'Structure Microscopique de la Matière','SPUC10','Indisponible',1,1),
(2,'Réactions et Réactivites Chimiques','SPUC20','Indisponible',2,1),
(3,'Thermodynamique Chimique','S2C6','Indisponible',2,1),
(4,'Chimie des Solutions','SPUC30','Indisponible',3,1),
(5,'Chimie Organique Fonctionnelle I','SPUC31','Indisponible',3,1),
(6,'Matériaux I','SPUC32','Indisponible',3,1),
(7,'Vision Macroscopique des Molécules','SPUC40','Indisponible',4,1),
(8,'Matériaux II','SPUC41','Indisponible',4,1),
(9,'Chimie Organique Fonctionnelle II','SPUC42','Indisponible',4,1),
(10,'Bloc de Chimie Expérimentale','SPUC43','Indisponible',4,1),

--Electronique--
(11,'Electronique Numérique - Bases','SPUE10','Indisponible',1,2),
(12,'Electronique Analogique','SPUE20','Indisponible',2,2),
(13,'Communication sans fil','SPUE21','Indisponible',2,2),
(14,'Automatique - Introduction','SPUE30','Indisponible',3,2),
(15,'Systèmes Embarqués I','SPUE31','Indisponible',3,2),
(16,'Physique des Capteurs','SPUE32','Indisponible',3,2),
(17,'Systèmes Optimisés en Energie','SPUE40','Indisponible',4,2),
(18,'Electronique Analogique Avancée','SPUE41','Indisponible',4,2),
(19,'Architecture des Processeurs','SPUE42','Indisponible',4,2),
(20,'Systèmes Embarqués II','SPUE43','Indisponible',4,2),

--Geographie--
(21,'Découverte I','SPUGDE10','Indisponible',1,3),
(22,'Découverte II','SPUGDC10','Indisponible',1,3),
(23,'Disciplinaire I','SPUGDI10','Indisponible',1,3),
(24,'Découverte III','SPUGDE20','Indisponible',2,3),
(25,'Découverte IV','SPUGDC20','Indisponible',2,3),
(30,'Disciplinaire II','SPUGDI20','Indisponible',2,3),
(26,'Disciplinaire III','SPUGDI30','Indisponible',3,3),
(27,'Disciplinaire IV','SPUGDI31','Indisponible',3,3),
(28,'Disciplinaire V','SPUGDI32','Indisponible',3,3),
(29,'Approfondissement Hors géographie I','SPUGDE33','Indisponible',3,3),
(31,'Disciplinaire VI','SPUGDI40','Indisponible',4,3),
(32,'Disciplinaire VII','SPUGDI41','Indisponible',4,3),
(33,'Disciplinaire VIII','SPUGDI42','Indisponible',4,3),
(34,'Approfondissement Hors Géographie II','SPUGDE40','Indisponible',4,3),

--Informatique--
(35,'Bases de l''Informatique','SPUF10','Indisponible',1,4),
(36,'Introduction à l''Informatique par le Web','SPUF11','Indisponible',1,4),
(37,'Systeme I: Unix et Programmation Shell','SPUF20','Indisponible',2,4),
(38,'Programmation Imperative','SPUF21','Indisponible',2,4),
(39,'Structures de Données et Programmation C ','SPUF30','Indisponible',3,4),
(40,'Bases de Données','SPUF31','Indisponible',3,4),
(41,'Outils Formels de l''informatique','SPUF32','Indisponible',3,4),
(42,'Algorithmique I','SPUF40','Indisponible',4,4),
(43,'Réseaux et Télécommunication','SPUF41','Indisponible',4,4),
(44,'Systèmes II: Mécanismes Internes des Systèmes d''Exploitation','SPUF42','Indisponible',4,4),
(45,'Introduction aux Systèmes Intelligents','SPUF43','Indisponible',4,4),
(46,'Technologies du Web','SPUF44','Indisponible',4,4),

--Mathematiques--
(47,'Fondements I','SPUM11','Indisponible',1,5),
(48,'Méthodes : approche continue','SPUM12','Indisponible',1,5),
(49,'Compléments I','SPUM13','Indisponible',1,5),
(50,'Fondements II','SPGM21','Indisponible',2,5),
(51,'Méthodes : Approche Discrète','SPUM22','Indisponible',2,5),
(52,'Compléments II','SPUM23','Indisponible',2,5),
(53,'Fondements III','SPUM30','Indisponible',3,5),
(54,'Compléments d''Analyse','SPUM31','Indisponible',3,5),
(55,'Compléments d''Algèbre','S4C52','Indisponible',3,5),
(56,'Méthodes : Mathématiques et ingénierie','S4C53','Indisponible',3,5),
(57,'Méthodes : Approche Géométrique','S4C54','Indisponible',3,5),
(58,'Analyse','S4C58','Indisponible',4,5),
(59,'Probabilités et Introduction à la Statistiques','S4C59','Indisponible',4,5),
(60,'Algèbre','S4C60','Indisponible',4,5),
(61,'Résolution Numérique des Systèmes d''Equations Linéaires et Non-linéaires','S4C61','Indisponible',4,5),
(62,'Méthodes : Approche Aléatoire','S4C62','Indisponible',4,5),

--MIASHS--
(63,'Economie-Gestion','SPUA10','Elle vise à doter les étudiants d’une formation solide en théorie économique, en gestion et en techniques quantitatives. Elle permet l’acquisition de connaissances économiques et managériales indispensables à la compréhension du positionnement stratégique et de l’environnement de l’entreprise, à l’analyse des comportements des agents économiques, du fonctionnement des marchés, etc.',1,6),
(64,'Economie-Gestion','SPUA20','Elle vise à doter les étudiants d’une formation solide en théorie économique, en gestion et en techniques quantitatives. Elle permet l’acquisition de connaissances économiques et managériales indispensables à la compréhension du positionnement stratégique et de l’environnement de l’entreprise, à l’analyse des comportements des agents économiques, du fonctionnement des marchés, etc.',2,6),
(65,'Economie-Gestion','SPUA30','Elle vise à doter les étudiants d’une formation solide en théorie économique, en gestion et en techniques quantitatives. Elle permet l’acquisition de connaissances économiques et managériales indispensables à la compréhension du positionnement stratégique et de l’environnement de l’entreprise, à l’analyse des comportements des agents économiques, du fonctionnement des marchés, etc.',3,6),
(66,'Introduction R','SPUA31','Ce document est une introduction à l’utilisation du logiciel libre de traitement de données et d’analyse statistique R. Il se veut le plus accessible possible, y compris pour ceux qui ne sont pas particulièrement familiers avec l’informatique.',3,6),
(67,'Economie-Gestion','SPUA40','Elle vise à doter les étudiants d’une formation solide en théorie économique, en gestion et en techniques quantitatives. Elle permet l’acquisition de connaissances économiques et managériales indispensables à la compréhension du positionnement stratégique et de l’environnement de l’entreprise, à l’analyse des comportements des agents économiques, du fonctionnement des marchés, etc.',4,6),
(68,'Mathématiques pour la Finance','SPUA41','Formation centrée sur les mathématiques appliquées, en particulier l’optimisation, l''analyse, les probabilités, la statistique et les méthodes numériques. Elle comprend également de nombreux enseignements d’économie, de finance, et d’informatique, ainsi que des enseignements d’ouverture, dans des proportions dépendant des choix de parcours et d’options.',4,6),

--Physique--
(69,'Mecanique I','SPUP10','La Licence de Mécanique propose une formation orientée principalement vers la modélisation, la simulation numérique et l’expérimentation en mécanique. Elle met l’accent sur les acquis fondamentaux en mécanique, mathématiques, informatique, physique, nécessaires pour assurer la pluridisciplinarité qui caractérise la mécanique, science du mouvement.',1,7),
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