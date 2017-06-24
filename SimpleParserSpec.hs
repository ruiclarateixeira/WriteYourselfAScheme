module SimpleParserSpec where

import Test.Hspec
import SimpleParser hiding (main)

main :: IO ()
main = hspec $ do
  describe "readExpr" $ do
    it "Escaped quotes are recognized" $
      readExpr "\"" `shouldBe` "Found Value"
