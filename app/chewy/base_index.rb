class BaseIndex < Chewy::Index
  settings analysis: {
               filter: {
                   nGram_filter: {
                       type: 'nGram',
                       min_gram: 1,
                       max_gram: 50,
                       token_chars: %w{letter digit punctuation symbol}
                   }
               },
               analyzer: {
                   nGram_analyzer: {
                       type: 'custom',
                       tokenizer: 'whitespace',
                       filter: %w{lowercase asciifolding nGram_filter}
                   },
                   whitespace_analyzer: {
                       type: 'custom',
                       tokenizer: 'whitespace',
                       filter: %w{lowercase asciifolding}
                   }
               }
           }
end
