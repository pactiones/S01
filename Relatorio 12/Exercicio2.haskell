pesoMaximo :: Double
pesoMaximo = 5.0

-- pesoMaximo = 10.0
--  Multiple declarations of ‘pesoMaximo’
--  Declared at: Main.hs:2:1
--               Main.hs:4:1

data Encomenda = Encomenda
  { destinatario :: String
  , peso :: Double
  , frete :: Double
  }

descrever :: Encomenda -> String
descrever e = destinatario e ++ " - " ++ show (peso e) ++ "kg - R$ " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas = filter (\e -> peso e <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)   

main :: IO ()
main = do
  let e1 = Encomenda {destinatario = "João", peso = 3.0, frete = 32.0}
  let e2 = Encomenda {destinatario = "Mateus", peso = 4.0, frete = 20.0}
  let e3 = Encomenda {destinatario = "Rafael", peso = 5.1, frete = 40.0}
  let e4 = Encomenda {destinatario = "Gabriel", peso = 8.5, frete = 45.0}
  
  let lista = [e1, e2, e3, e4]
  
  mapM_ putStrLn (map descrever lista)
  
  let cabem = cabemNaVassoura lista
  mapM_ putStrLn (map descrever cabem)
  
  print (totalDeFretes cabem)
