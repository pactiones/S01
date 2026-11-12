data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor :: Double
  , etapa :: Etapa
  }

descrever :: Atendimento -> String
descrever a = cliente a ++ " - " ++ servico a ++ " - " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos = sum (map valor (filter (\a -> etapa a == Concluido) atendimentos))

main :: IO ()
main = do
  let a1 = Atendimento {cliente = "Maria", servico = "Banho e Spa", valor = 250.0, etapa = NaFila}
  let a2 = Atendimento {cliente = "João", servico = "Lavagem do cabelo", valor = 40.0, etapa = NoBanho}
  let a3 = Atendimento {cliente = "Rogerio", servico = "Serviço completo", valor = 500.0, etapa = NaFila}
  
  let listaOriginal = [a1, a2, a3]
  
  let listaNova = [concluir a1, a2, concluir a3]
  
  mapM_ putStrLn (map descrever listaOriginal)
  print (arrecadado listaOriginal)
  
  mapM_ putStrLn (map descrever listaNova)
  print (arrecadado listaNova)
