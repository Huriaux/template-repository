# Conception d'un système d'information d'une Application e-Commerce

### Objectif :

## **--- MCD ---**
Le **Modèle Conceptuel de Données** offre une représenation globale de la structure de données. Il permet de visualiser les **Entités**, qui sont des objets ou concepts du monde réel, et leurs **Attributs**, qui sont les propriétés ou caractéristiques spécifiques à chaque **Entité**. Il illustre également les liens logiques entre chaque **Entité** que l'on appelle les **Relations**. Enfin, on retrouve les **Cardinalités** qui indiquent le nombre minimal et maximal de fois qu'une **Entité** peut être associée à une autre dans une **Relation**.

### 1. les Entités
**`Customers` :** Chaque client qui pense une commande dans la boutique\
**`Orders` :** Les commandes passées par les clients\
**`Products` :** Les produits disponible dans la boutique

### 2. les Attributs
**`Customers` :** lastname, firstname, email, address\
**`Orders` :** total_price\
**`Products` :** name, price, stock

### 3. les Relations avec les Entités et Cardinalités
**`Customers` (1:N) `Orders` :** Un client peut passer au moins une commande, alors qu'une commande est passée par un seul et même client.

**`Orders` (N:M) `Products` :** Une commande peut inclure plusieurs produits, et un produit peut être inclue dans plusieurs commandes

---

## --- MLD ---

### 1. Conversion des Entités en Tables

### 2. les Clés Primaires

### 3. les Clés Étrangères

### 4. les Tables d'association

---


## --- Data Dictionnary ---

## --- MPD ---