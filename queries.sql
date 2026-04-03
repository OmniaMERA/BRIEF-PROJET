SELECT 
    SUM(qte * prix) AS chiffre_d_affaires,
    SUM(CASE WHEN produit = 'Produit A' THEN qte ELSE 0 END) AS ventes_produit_a,
    SUM(CASE WHEN produit = 'Produit B' THEN qte ELSE 0 END) AS ventes_produit_b,
    SUM(CASE WHEN produit = 'Produit C' THEN qte ELSE 0 END) AS ventes_produit_c,
    SUM(CASE WHEN region = 'Nord' THEN qte ELSE 0 END) AS ventes_nord,
    SUM(CASE WHEN region = 'Sud' THEN qte ELSE 0 END) AS ventes_sud
FROM ventes;