require 'rails_helper'

RSpec.describe Article, :type => :model do
  it 'parses articles' do
    html = File.read(File.dirname(__FILE__) + '/fixtures/sme-title-page.html', encoding: 'windows-1250')
    Article.parse_from_sme(html)

    expect(Article.count).not_to eq(0)

    article = Article.first

    expect(article.title).to eq('Fico ustúpil opozícii, vývoz vody chce stopnúť v Ústave')
    expect(article.perex).to eq('Opozícia dostala ponuku hlasovať za ďalšiu zmenu Ústavy.')
    expect(article.sme_id).to eq(7273950)
  end
end
