# Conception d'un système d'information d'une Application e-Commerce

### Objectif :
L'objectif est de modéliser et de donner une visualisation claire et structurée des données et des processus du système d’information d'une Application e-Commerce.

## **--- MCD ---**
*Le **Modèle Conceptuel de Données** offre une représenation globale de la structure de données. Il permet de visualiser les **Entités**, qui sont des objets ou concepts du monde réel, et leurs **Attributs**, qui sont les propriétés ou caractéristiques spécifiques à chaque **Entité**. Il illustre également les liens logiques entre chaque **Entité** que l'on appelle les **Relations**. Enfin, on retrouve les **Cardinalités** qui indiquent le nombre minimal et maximal de fois qu'une **Entité** peut être associée à une autre dans une **Relation**.*

### 1. les Entités
**`Customers` :** Chaque client qui pense une commande dans la boutique\
**`Orders` :** Les commandes passées par les clients\
**`Products` :** Les produits disponible dans la boutique

### 2. les Attributs
**`Customers` :** lastname, firstname, email, address\
**`Orders` :** total_price\
**`Products` :** name, price, stock

### 3. les Relations avec les Entités et Cardinalités
**`Customers (1:N) Orders` :** Un client peut passer au moins une commande, alors qu'une commande est passée par un seul et même client.

**`Orders (N:M) Products` :** Une commande peut inclure plusieurs produits, et un produit peut être inclue dans plusieurs commandes. Pour gérer les multiples liaisons de ces deux entités, une **table d'associations** est donc nécéssaire.

![Image-MCD](TP-MERISE-MCD.drawio.png)

---

## **--- MLD ---**
Le **Modèle Logique des Données** est une représentation plus précise du **MCD**. Lors de cette transition, les **Entités** sont convertis en **Tables**. On précisera les **clés primaires** pour chaque **Table** et on ajoute les **clés étrangères**, et les **tables d'associations** (dans le cas d'une relation 'many-to-many'), établissent ainsi les liens entre les **Tables**, conformément aux associations définies dans le MCD. Le MLD spécifie également les types de données pour chaque attribut (comme VARCHAR, INT, etc.).

### 1. les Clés Primaires
Pour spécifier qu'un attribut sert de clé primaire dans une table, on ajoute l'abréviation "PK" pour "Primary Key" à côté du nom d'attribut concerné. 
**`Customers` :** customer_id\
**`Orders` :** order_id\
**`Products` :** product_id

### 2. les Clés Étrangères
La relation **'one-to-many'**, notée `Customers (1:N) Orders`, implique l'insertion de la **clé étrangère** `customer_id` dans la table `Orders`. Cette **clé étrangère** fait référence à la **clé primaire** de la table `Customers`, permettant ainsi de lier chaque commande à un unique client, et garantissant l'intégrité référentielle des données entre les tables.

### 3. les Tables d'association
Les relations **'many-to-many'**, telles que `Commande --(N:M)-- Product`, exigent l'établissement de **tables d'association**. Ici, une table `OrdersProducts` (anciennement 'include') est créée pour relier chaque commande à plusieurs produits et inversement, afin de faciliter la gestion de ces interactions plus complexe.

### 4. le Typage des données

Le typage des données des attributs spécifie le genre d'informations que chaque attribut peut contenir dans une base de données. Ici nous avons plusieurs types, notamment :

INTEGER : Stocke des nombres entiers

VARCHAR() : Un type de données pour les chaînes de caractères de longueur variable, où "n" représente la longueur maximale de la chaîne.

FLOAT(m, n) : Utilisé pour stocker des nombres réels avec des points décimaux. "m" indique la précision totale et "n" le nombre de chiffres après la virgule. 

AUTO_INCREMENT : Principalement pour les clés primaires, ce type incrémente automatiquement la valeur chaque fois qu'un nouvel enregistrement est inséré.

### Table `Customers`

| Attribut    | Type de données |
|-------------|-----------------|
| customer_id | AUTO_INCREMENT  |
| lastname    | VARCHAR(50)     |
| firstname   | VARCHAR(50)     |
| email       | VARCHAR(50)     |
| address     | VARCHAR(100)    |

### Table `Orders`

| Attribut    | Type de données |
|-------------|-----------------|
| order_id    | AUTO_INCREMENT  |
| total_price | FLOAT(10, 2)    |

### Table `Products`

| Attribut   | Type de données |
|------------|-----------------|
| product_id | AUTO_INCREMENT  |
| name       | VARCHAR(50)     |
| price      | FLOAT(5, 2)     |
| stock      | INTEGER         |

### Table d'association `OrdersProducts`

| Attribut   | Type de données |
|------------|-----------------|
| order_id   | INTEGER         |
| product_id | INTEGER         |


![Image-MCD](TP-MERISE-MLD.drawio.png)

---

## --- Data Dictionnary ---
Le **Dictionnaire de données** est un document détaillé qui décrit toutes les informations relatives aux données utilisés dans un système d'information. Au minimum, un dictionnaire de données est composé d'une colonne **Attribut**, **Type**, **Description** et **Exemple**. Ici, nous avons trouvé pertinent d'ajouter une colonne **Contraintes** pour plus de précision, et de garder la colonne **Entité** pour plus de clarté dans la lectures du dictionnaire de données. 

Ainsi le **dictionnaire de données** sert de référence pour comprendre comment les données sont structurées, stockées et utilisées dans une base de données, en fournissant ainsi des détails essentiels pour les développeurs et  personnes en charge de la gestion de la base de données.

![Image-MCD](TP-MERISE-Data_Dictionnary.drawio.png)

---


## --- MPD ---
.