import Angabe2

main = do
    print(analysiere (Kopf Niete (Kopf Treffer (Schluss Niete))) Niete Niete == EQ)
    print(analysiere (Kopf Niete (Kopf Treffer (Schluss Niete))) Niete Treffer == GT)
    print(analysiere (Kopf Niete (Kopf Treffer (Schluss Niete))) Treffer Niete == LT)
    print(analysiere (Kopf Niete (Kopf Treffer (Schluss Niete))) Treffer Treffer == EQ)
    print(analysiere (Kopf Niete (Kopf Treffer (Kopf Niete (Kopf Niete (Kopf Niete (Schluss Freilos)))))) Treffer Niete == LT)
    print(analysiere (Kopf Niete (Kopf Treffer (Kopf Treffer (Schluss Niete)))) Treffer Niete == EQ)
    print(analysiere' (Gabel (Blatt Treffer) Niete (Gabel (Blatt Niete) Treffer (Blatt Niete))) Niete Treffer == GT)
    print(analysiere' (Gabel (Blatt Treffer) Niete (Gabel (Blatt Niete) Treffer (Blatt Niete))) Niete Niete == EQ)
    print(analysiere' (Gabel (Blatt Treffer) Niete (Gabel (Blatt Niete) Treffer (Blatt Niete))) Treffer Niete == LT)
    print(analysiere' (Gabel (Blatt Treffer) Niete (Gabel (Blatt Niete) Treffer (Blatt Niete))) Treffer Treffer == EQ)
    print(analysiere' (Gabel (Gabel (Gabel (Blatt Treffer) Treffer (Blatt Treffer)) Treffer (Blatt Niete)) Niete (Gabel (Blatt Niete) Treffer (Blatt Niete))) Treffer Treffer == EQ)
    print(analysiere' (Gabel (Gabel (Gabel (Blatt Treffer) Treffer (Blatt Treffer)) Treffer (Blatt Niete)) Niete (Gabel (Blatt Niete) Treffer (Blatt Niete))) Treffer Niete == GT)
    print(analysiere' (Gabel (Gabel (Gabel (Blatt Treffer) Treffer (Blatt Treffer)) Treffer (Blatt Niete)) Niete (Gabel (Blatt Niete) Treffer (Blatt Niete))) Niete Treffer == LT)
    print(analysiere' (Gabel (Gabel (Gabel (Blatt Treffer) Treffer (Blatt Treffer)) Treffer (Blatt Niete)) Niete (Gabel (Blatt Niete) Treffer (Blatt Niete))) Niete Niete == EQ)
    print(analysiere' (Gabel (Gabel (Gabel (Blatt Treffer) Treffer (Blatt Freilos)) Treffer (Blatt Niete)) Niete (Gabel (Blatt Niete) Treffer (Blatt Niete))) Niete Treffer == EQ)
    print(analysiere'' (Kopf' (Gabel (Blatt Treffer) Niete (Blatt Niete)) (Kopf' (Blatt Treffer) (Schluss' (Gabel (Blatt Niete) Treffer (Blatt Niete))))) Niete Treffer == GT)
    print(analysiere'' (Kopf' (Gabel (Blatt Treffer) Niete (Blatt Niete)) (Kopf' (Blatt Treffer) (Schluss' (Gabel (Blatt Niete) Treffer (Blatt Niete))))) Niete Niete == EQ)
    print(analysiere'' (Kopf' (Gabel (Blatt Treffer) Niete (Blatt Niete)) (Kopf' (Blatt Treffer) (Schluss' (Gabel (Blatt Niete) Treffer (Blatt Niete))))) Treffer Niete == LT)
    print(analysiere'' (Kopf' (Gabel (Blatt Treffer) Niete (Blatt Niete)) (Kopf' (Blatt Treffer) (Schluss' (Gabel (Blatt Niete) Treffer (Blatt Niete))))) Treffer Treffer == EQ)
    print(analysiere'' (Kopf' (Gabel (Blatt Treffer) Niete (Blatt Niete)) (Kopf' (Blatt Treffer) (Schluss' (Gabel (Blatt Niete) Treffer (Blatt Niete))))) Freilos Niete == LT)
    print(analysiere'' (Kopf' (Gabel (Blatt Treffer) Niete (Blatt Niete)) (Kopf' (Blatt Treffer) (Schluss' (Gabel (Blatt Niete) Treffer (Blatt Niete))))) Freilos Treffer == LT)
    print(analysiere'' (Kopf' (Gabel (Blatt Treffer) Niete (Blatt Niete)) (Kopf' (Blatt Treffer) (Schluss' (Gabel (Blatt Freilos) Treffer (Blatt Niete))))) Niete Treffer == EQ)
    print(analysiere''' (Gabel' (Gabel' (Blatt' (Kopf Treffer (Schluss Niete))) (Schluss Niete) (Blatt' (Schluss Niete))) (Schluss Treffer) (Blatt' (Schluss Niete))) Niete Treffer == GT)
    print(analysiere''' (Gabel' (Gabel' (Blatt' (Kopf Treffer (Schluss Niete))) (Schluss Niete) (Blatt' (Schluss Niete))) (Schluss Treffer) (Blatt' (Schluss Niete))) Niete Niete == EQ)
    print(analysiere''' (Gabel' (Gabel' (Blatt' (Kopf Treffer (Schluss Niete))) (Schluss Niete) (Blatt' (Schluss Niete))) (Schluss Treffer) (Blatt' (Schluss Niete))) Treffer Treffer == EQ)
    print(analysiere''' (Gabel' (Gabel' (Blatt' (Kopf Treffer (Schluss Niete))) (Schluss Niete) (Blatt' (Schluss Niete))) (Schluss Treffer) (Blatt' (Schluss Niete))) Treffer Niete == LT)
    print(analysiere''' (Gabel' (Gabel' (Blatt' (Kopf Treffer (Schluss Niete))) (Schluss Niete) (Blatt' (Schluss Niete))) (Schluss Treffer) (Blatt' (Schluss Niete))) Treffer Freilos == GT)
    print(analysiere''' (Gabel' (Gabel' (Blatt' (Kopf Treffer (Schluss Niete))) (Schluss Niete) (Blatt' (Schluss Niete))) (Schluss Treffer) (Blatt' (Schluss Niete))) Freilos Freilos == EQ)
    print(analysiere''' (Gabel' (Gabel' (Blatt' (Kopf Treffer (Schluss Niete))) (Schluss Niete) (Blatt' (Schluss Niete))) (Schluss Treffer) (Blatt' (Schluss Niete))) Freilos Niete == LT)
    print(analysiere''' (Gabel' (Gabel' (Blatt' (Kopf Treffer (Schluss Niete))) (Schluss Niete) (Blatt' (Schluss Niete))) (Schluss Treffer) (Blatt' (Schluss Niete))) Niete Freilos == GT)
    print(analysiere''' (Gabel' (Gabel' (Blatt' (Kopf Treffer (Schluss Niete))) (Schluss Freilos) (Blatt' (Schluss Niete))) (Schluss Treffer) (Blatt' (Schluss Freilos))) Niete Freilos == EQ)
