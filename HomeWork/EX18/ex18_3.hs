import Prelude  hiding (repeat)
-- 18.3 は、do を使った定義と、まったく使わない定義の両方を書いてください。
-- 18.3 をチェックするときは、以下を評価してみてください。

  -- repeat (do l <- getLine; return (l == "")) $ putStrLn "Hello"

-- 上の式のように、do を１行で書きたいときは、各行を ; で区切ります。
-- repeat がうまく定義できていれば、改行を入力するまで Hello が改行付きで
-- 出力されます。なお、putStrLn は Prelude で定義済みなので自分で定義する
-- 必要はありません（定義するとエラーになります）。
--
-- ちなみに、上の式は以下のような do を使わない式に変換できます。
-- どちらを評価しても結果は同じです。

  -- repeat (getLine >>= return . (== "")) $ putStrLn "Hello"

-- so that "repeat test oper" has the effect of repeating oper until the condition test is "True".
repeat :: IO Bool -> IO() -> IO()
repeat iobool io = do
                      if iobool == True
                      then return 0
                      else repeat (do l <- getLine; return (l == "")) $ putStrLn "Hello"

main :: IO ()
main = do
  putStrLn "Hello"
  putStrLn "Hello"
  -- repeat (do l <- getLine; return (l == "")) $ putStrLn "Hello"
