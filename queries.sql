SELECT 
    SUM(qte * prix) AS chiffre_d_affaires,
    SUM(qte) FILTER (WHERE produit = 'Produit A') AS ventes_produit_a,
    SUM(qte) FILTER (WHERE produit = 'Produit B') AS ventes_produit_b,
    SUM(qte) FILTER (WHERE produit = 'Produit C') AS ventes_produit_c,
    SUM(qte) FILTER (WHERE region = 'Nord') AS ventes_nord,
    SUM(qte) FILTER (WHERE region = 'Sud') AS ventes_sud
FROM ventes;
