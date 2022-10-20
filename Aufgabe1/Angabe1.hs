module Angabe1 where

{- 1. Vervollstaendigen Sie gemaess Angabentext!
   2. Vervollständigen Sie auch die vorgegebenen Kommentaranfänge!
   3. Loeschen Sie keine Deklarationen aus diesem Rahmenprogramm, auch nicht die Modulanweisug!
   4. Achten Sie darauf, dass `Gruppe' Leserechte fuer Ihre Abgabedatei hat!
   5. Ersetzen Sie die Trivialimplementierungen error "Nicht implementiert" durch
      sinnvolle Implementierungen, die die jeweilige Aufgabenstellung erfüllen.
-}

-- Fuer A.1

type Nat0         = Int
type Zeichen      = Char
type Zeichenreihe = [Zeichen]
type Haeufigkeit  = Nat0
type Histogramm   = [(Zeichen,Haeufigkeit)]

-- Fuer A.2

type Gewicht        = Nat0
type Gewichtsverzeichnis = [(Zeichen,Gewicht)]
fehlerwert = -1


-- Aufgabe A.1

haeufigkeit :: Zeichenreihe -> Histogramm
haeufigkeit input = traverseChars input []

traverseChars :: Zeichenreihe -> Histogramm -> Histogramm
--wenn Zeichenreihe "leer" bzw. nicht vorhanden, dann wird Histogramm unverändert zurückgegeben
traverseChars [] histogramm = histogramm
traverseChars input histogramm = traverseChars (tail input) (addChar (head input) histogramm)
{-ruft traverseChar für nächstes Zeichen auf und übergibt dabei das neue Histogramm, in welches das aktuelle Zeichen
hinzugefügt wurde-}

addChar :: Zeichen -> Histogramm -> Histogramm
addChar currentChar [] = [(currentChar, 1)] --gibt neues Zeichen-Tupel zurück, wenn kein Histogramm vorhanden/leer
addChar currentChar (x:xs) 
   | currentChar == fst x = incrementCharOccurrence x:xs 
   | otherwise = x:addChar currentChar xs
{--wenn Zeichen von erstem Tupel das gesuchte Zeichen ist, wird die Hauefigkeit erhöht;
Falls nicht, dann wird addChar für die restlichen Tupel im Histogramm aufgerufen und das erste Tupel bleibt unverändert-}

incrementCharOccurrence :: (Zeichen,Haeufigkeit) -> (Zeichen,Haeufigkeit)
--erhöht zweiten Teil des Tupels, also die Hauefigkeit um 1 und gibt dieses neue Tupel zurück
incrementCharOccurrence charOccurrence = (fst charOccurrence, snd charOccurrence + 1)

    

{- Knapp, aber gut nachvollziehbar geht haufigkeit folgendermassen vor:
   die Hilfsfunktion traverseChar ist dafür da, um die einzelnen Zeichen durchzugehen und das erweiterte Histogramm 
   mitzugeben. 
   Weiters wird die Häufigkeit des entsprechenden Zeichens erhöht, wenn das aktuelle Zeichen bereits im Histogramm
   vorhanden ist. Falls nicht wird ein neues Tupel mit dem Zeichen hinten im Histogramm drangehängt.
-}



-- Aufgabe A.2

gewicht :: Zeichenreihe -> Gewichtsverzeichnis -> Gewicht
gewicht [] weightList = 0
gewicht input weightList = charWeight(head input) weightList + gewicht(tail input) weightList

charWeight :: Zeichen -> Gewichtsverzeichnis -> Gewicht
charWeight currentChar [] = 0
charWeight currentChar (x:xs)
  | currentChar == fst x = snd x
  | otherwise = charWeight currentChar xs

{- Knapp, aber gut nachvollziehbar geht gewicht folgendermassen vor:
   Die Summe der Gewichte wird standardmäßig mit 0 angenommen. Die Gewichtssumme setzt sich aus dem Gewicht
   des ersten Tupels und den rekursiven Aufrufen der Rechenvorschrift 'gewicht' der restlichen Tupel zusammen.
   Das Gewicht der jeweiligen einzelnen Tupel wird durch charWeight berechnet. 






   !!!!!!!!!!!!!!!!! -1 ERWÄHNEN !!!!!!!!!!!!!!!!!!!
-}



-- Aufgabe A.3

korrigiere :: Gewichtsverzeichnis -> Gewichtsverzeichnis
korrigiere [] = []
korrigiere (x:xs) = x:korrigiere(delMultipleOccurrence (fst x) xs)

delMultipleOccurrence :: Zeichen -> Gewichtsverzeichnis -> Gewichtsverzeichnis
delMultipleOccurrence character [] = []
delMultipleOccurrence character (x:xs)
   | character == fst x = delMultipleOccurrence character xs
   | otherwise = x:delMultipleOccurrence character xs

{- Knapp, aber gut nachvollziehbar geht korrigiere folgendermassen vor:
   Jedes Zeichen wird nach für nach betrachtet (von links beginnend). Wenn das Zeichen mehrfach im Gewichtsverzeichnis
   vorkommt, so wird dieses Merfachvorkommen entfernt.
   Sobald der jeweilige Buchstabe bearbeitet wurde wird nur mehr mit dem verbesserten Verzeichnis weitergearbeitet.
-}



-- Aufgabe A.4

korrigiere' :: Gewichtsverzeichnis -> Gewichtsverzeichnis
korrigiere' [] = []
korrigiere' (x:xs) = (fst x, snd x + getTotalWeight (fst x) xs):korrigiere'(delMultipleOccurrence (fst x) xs)

getTotalWeight :: Zeichen -> Gewichtsverzeichnis -> Gewicht
getTotalWeight character [] = 0
getTotalWeight character (x:xs)
   | character == fst x = snd x + getTotalWeight character xs
   | otherwise = getTotalWeight character xs
{- Knapp, aber gut nachvollziehbar geht korrigiere' folgendermassen vor:
   Jedes Zeichen wird nach für nach betrachtet (von links beginnend). Das Gewicht der Mehrfachvorkommen wird jeweils 
   immer zu dem schon bestehenden Gewicht addiert (falls das Zeichen mehrfach vorkommt). Die Einträge der 
   Mehrfachvorkommen in Form von Tupel werden nach der Summierung entfernt. 
   Sobald der jeweilige Buchstabe bearbeitet wurde wird nur mehr mit dem verbesserten Verzeichnis weitergearbeitet.
-}