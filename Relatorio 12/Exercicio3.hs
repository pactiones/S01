data Esboco = Esboco
  { titulo :: String
  , tecnica :: String
  , horas :: Int
  }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "O caderno esta vazio."
esbocoMaisRecente (e:_) = titulo e ++ " - " ++ tecnica e

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  let e1 = Esboco {titulo = "Passagem para o céu", tecnica = "Aquarela", horas = 4}
  let e2 = Esboco {titulo = "Bicho papão", tecnica = "carvão", horas = 8}
  let e3 = Esboco {titulo = "O além", tecnica = "grafite", horas = 10}
  let caderno = [e1, e2, e3]

  putStrLn (esbocoMaisRecente caderno)
  print (contarEsbocos caderno)
  print (horasDesenhando caderno)

  putStrLn (esbocoMaisRecente [])

  let e4 = Esboco {titulo = "Infinito", tecnica = "nanquim", horas = 2}
  let cadernoNovo = e4 : caderno

  putStrLn (esbocoMaisRecente cadernoNovo)
  print (contarEsbocos cadernoNovo)
  
  putStrLn (esbocoMaisRecente caderno)
  print (contarEsbocos caderno)

  -- putStrLn (titulo (head []))
  -- main: Prelude.head: empty list
  -- CallStack (from HasCallStack):
  -- error, called at libraries/base/GHC/List.hs:1646:3 in base:GHC.List
  -- errorEmptyList, called at libraries/base/GHC/List.hs:85:11 in base:GHC.List
  -- badHead, called at libraries/base/GHC/List.hs:81:28 in base:GHC.List
  -- head, called at Main.hs:41:21 in main:Main
