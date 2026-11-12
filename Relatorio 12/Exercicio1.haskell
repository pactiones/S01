data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido pediuLeite (Cafe _ preco _) =
  if pediuLeite
    then preco + 2.0
    else preco

main :: IO ()
main = do
  let cafe1 = Cafe "Cafe grande" 7.5 9
  let cafe2 = Cafe "Cafe pequeno" 5.0 6
  let cafe3 = Cafe "Cafe Gelado" 8.0 3

  putStrLn (descrever cafe1 ++ " - " ++ forca cafe1)
  putStrLn (descrever cafe2 ++ " - " ++ forca cafe2)
  putStrLn (descrever cafe3 ++ " - " ++ forca cafe3)

  print (precoDoPedido True cafe2)
  print (precoDoPedido False cafe2)
