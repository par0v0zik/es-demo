class MainIndex < BaseIndex
  define_type Doctor do
    root '_all': { index_analyzer: 'nGram_analyzer', search_analyzer: 'whitespace_analyzer' } do
      field :first_name, :last_name
      field :posts, type: 'nested' do
        field :title, :content, :published
      end
    end
  end
end
