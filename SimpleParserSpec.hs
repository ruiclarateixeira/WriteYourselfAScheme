module SimpleParserSpec where

import Test.Hspec
import SimpleParser hiding (main)

main :: IO ()
main = hspec $ do
  describe "readExpr" $ do
    it "Recognizes numbers" $
        readExpr "123" `shouldBe` "Found value"
    it "Recognizes escaped qutotes" $
        readExpr "\"\\\"\"" `shouldBe` "Found value"
