require 'sinatra'

articles = [
  {
    tag: "sports, snowboard, cool",
    title: "Trip to the Alps",
    date: "1/12/2013",
    content: "Morbi sagittis interdum tristique. Nam at libero tristique, efficitur sapien et, consequat orci. Sed tristique sed libero id dignissim. Sed a diam condimentum, convallis ex in, tempus eros. Suspendisse rhoncus nunc a tellus ullamcorper, auctor bibendum dolor varius. Quisque a augue id tellus facilisis lacinia. Praesent nec mauris feugiat tellus eleifend euismod in nec lectus. Pellentesque in mauris ullamcorper, rutrum augue nec, pretium dolor. Proin tortor magna, varius at ligula in, semper commodo risus. Praesent quis sem ullamcorper, suscipit dolor ut, fermentum libero.",
  },
  {
    tag: "gaming, e-sports, cool",
    title: "Campus Party",
    date: "15/08/2006",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse interdum magna quis nisi sagittis sollicitudin. Phasellus vel urna accumsan libero commodo hendrerit sed et orci. Duis libero tortor, aliquam eu egestas eu, porta et diam. Nunc tincidunt scelerisque mauris, vitae ullamcorper diam luctus vel. Nam suscipit condimentum justo quis congue. Nullam lobortis mattis diam ac viverra. Nunc lobortis augue eu augue pretium, non dapibus purus tristique. Mauris aliquet ante in turpis posuere, sit amet varius leo luctus. Donec nec ipsum urna. Duis fermentum eros pulvinar lorem varius, id fringilla diam convallis. Vivamus eu lacus eros. Aliquam malesuada sem in diam pharetra rutrum. Curabitur sollicitudin eget elit at tempor. Pellentesque ac tellus in nulla viverra accumsan.",
  },
  {
    tag: "convention, london, tattoo, cool",
    title: "International Tattoo Convention, London",
    date: "10/09/2014",
    content: "Mauris a libero urna. Fusce congue sodales lacinia. Duis convallis diam quam, eu sodales libero varius eget. Mauris convallis libero sem, et pellentesque urna maximus eu. Mauris et metus nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent quis luctus metus. Nam imperdiet felis a aliquam aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quam nibh, aliquet ac augue eu, sagittis suscipit justo.",
  },
  {
    tag: "finland, holidays, interail, cool",
    title: "Interrail trip, Finland",
    date: "10/09/2014",
    content: "Phasellus fermentum molestie mi non elementum. Sed accumsan, quam at iaculis volutpat, justo lectus placerat nisi, et efficitur ex ipsum eu felis. Duis ultricies porttitor lorem dapibus sodales. Donec sapien purus, fringilla congue est eget, convallis pharetra est. Integer tincidunt cursus arcu, eget molestie est consequat tempus. Vestibulum ullamcorper eros scelerisque iaculis condimentum. Curabitur mattis tincidunt massa, quis facilisis mauris condimentum eget. Cras lorem nisi, vehicula vel cursus vitae, consequat id magna. Sed faucibus a dui at ornare.",
  },
  {
    tag: "gaming, hobbies, fun, cool",
    title: "The old good times @lan",
    date: "14/09/2012",
    content: "Nulla molestie purus et purus commodo blandit. Integer at nisi tortor. Integer ut est finibus, semper elit eu, consequat ipsum. Nulla dignissim aliquet orci in semper. Suspendisse porta est eros, eget tempor dui faucibus vel. Integer sit amet felis leo. Suspendisse lacinia odio et enim pharetra interdum. Donec posuere egestas purus. Morbi mollis non ante fringilla semper. Nunc augue sem, iaculis tristique turpis ac, aliquam finibus eros. Ut at dictum metus, vitae eleifend mauris. Duis rutrum, lectus eu porta mollis, elit justo bibendum nulla, eu viverra eros arcu ac odio. Morbi nec rhoncus tortor. Morbi elementum pellentesque eleifend. Vestibulum porttitor diam non odio ultrices, eu iaculis ipsum dictum.",
  },
  {
    tag: "cook, share, friends",
    title: "Cooking for others",
    date: "24/12/2014",
    content: "Praesent euismod massa vitae feugiat hendrerit. Duis non libero eu ligula luctus pretium sit amet vel mi. Mauris vel eros justo. Donec rutrum lacus ipsum, sit amet placerat nibh pretium ac. Etiam aliquet mauris ut interdum pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla lobortis ligula felis, non eleifend nunc bibendum ac. Morbi lorem neque, porta eget aliquet et, tristique nec eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed at ornare nunc. Donec sit amet sollicitudin lectus. Vivamus nec faucibus quam. Duis a lectus et est tempor iaculis. Praesent efficitur eros tincidunt, bibendum nulla a, rhoncus turpis. Aenean a ante sed sapien scelerisque sagittis. Phasellus ac metus et ante malesuada hendrerit eget ac magna.",
  },
  {
    tag: "cat, dog, animals",
    title: "Pets, good and bad",
    date: "01/09/2014",
    content: "Etiam dignissim ornare erat vel malesuada. Praesent posuere eu urna a ornare. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla eu tincidunt mi. Nulla ipsum nibh, fermentum eu urna sed, ultricies suscipit est. Mauris a turpis ligula. Duis urna lorem, egestas at ante sit amet, fermentum porttitor ligula. Nullam tempor elit ac aliquet ornare. Nullam at tellus feugiat, fermentum nunc cursus, fringilla velit. In id tristique nisl, ac rhoncus ligula. Donec varius orci eu magna scelerisque, quis imperdiet turpis consectetur. Phasellus auctor blandit mauris ac porta. Nulla vel nulla sit amet nulla congue vestibulum. Aenean vestibulum metus libero, at hendrerit arcu iaculis quis. Vestibulum justo massa, dapibus nec libero mollis, suscipit venenatis sapien. Nulla facilisi.",
  },
  {
    tag: "birthday, holidays, friends",
    title: "A special day",
    date: "18/02/2015",
    content: "Aliquam et lectus eros. Vestibulum at tellus libero. Nunc vel euismod quam. Vestibulum id sem mi. Curabitur finibus augue sed mi commodo, at scelerisque nisl cursus. Ut at erat pretium, interdum ipsum sed, sodales erat. Sed lacinia nulla a dapibus rhoncus. Nam luctus sapien sed viverra cursus. Aliquam quis euismod elit, lacinia auctor nisi. Proin ornare ligula diam, vel mattis arcu vulputate non. Proin ultricies nisl non tellus imperdiet rutrum. Donec pretium leo nec dolor finibus dapibus. Suspendisse suscipit at nisi vel tincidunt. Sed fermentum ligula nec enim posuere venenatis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus arcu erat, placerat in felis ut, accumsan mattis ante.",
  },
  {
    tag: "busy, annoying, rush",
    title: "London peak times",
    date: "06/03/2015",
    content: "Nunc quis purus eget libero luctus ullamcorper. Donec ut ligula venenatis leo ornare ultrices. Morbi auctor mi in diam interdum congue. Duis vulputate lacus nec mattis sodales. Duis eu dignissim dui, sit amet dapibus risus. Aliquam a libero sit amet metus rutrum semper. Sed vel ex eu augue mattis maximus. Vestibulum risus odio, ultrices a metus nec, egestas sollicitudin magna. Sed ultricies lobortis eros, aliquam lobortis tortor mollis eu. Ut maximus mi non elit vehicula eleifend. Proin ultricies, ante vel rutrum pellentesque, nulla magna posuere justo, nec dapibus risus elit non augue. Curabitur ultricies diam sit amet lectus congue, ac condimentum sapien imperdiet. Duis at vulputate purus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur tempor pulvinar scelerisque.",
  },
  {
    tag: "memories, Kito, friendship",
    title: "Long time no see",
    date: "15/09/2012",
    content: "Praesent sodales massa ut magna laoreet efficitur. Quisque vitae metus ultricies, condimentum lorem id, consectetur massa. Aenean vitae augue molestie, finibus libero eu, elementum nulla. Donec consequat lorem quis ipsum commodo faucibus. Aliquam in ullamcorper massa. Proin at vulputate ex. Ut scelerisque rhoncus nibh, at sollicitudin ipsum luctus vel. In pharetra tincidunt ligula lobortis scelerisque. Etiam vulputate vulputate tortor, nec elementum sem fermentum ac. Nam a nunc non nibh lobortis congue eu at orci. Maecenas nec nisi non dui suscipit cursus ac id tellus.",
  },
  {
    tag: "happy, love, time",
    title: "What we all want",
    date: "18/02/1984",
    content: "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam ex ligula, vestibulum et nibh eget, placerat consectetur ipsum. Nulla fringilla eleifend turpis, dictum posuere erat viverra id. Suspendisse ac nulla at justo accumsan pretium. Duis nec rutrum odio, eu imperdiet sapien. Vestibulum commodo, odio et lobortis aliquam, massa orci laoreet tellus, nec faucibus dui enim vitae mauris. Sed ut sem convallis, tempor erat non, faucibus neque. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut dapibus dictum nulla, at tincidunt mi condimentum sit amet.",
  },
  {
    tag: "computers, price, quality",
    title: "Why mac and not PC?",
    date: "17/02/2015",
    content: "Suspendisse facilisis est in quam pretium, at gravida ipsum egestas. Suspendisse potenti. In nunc leo, finibus eu mauris a, accumsan finibus velit. Maecenas finibus, ex vel venenatis iaculis, ante augue rutrum purus, nec placerat urna magna non ipsum. Nam eleifend nisi lorem, vel semper nisi varius ac. Vestibulum ac malesuada ipsum. Suspendisse laoreet orci id mauris tempus, convallis aliquam turpis aliquet. Vivamus eu enim ex. Ut sollicitudin accumsan lectus, at posuere nibh porttitor et. Integer consequat sem in neque egestas, nec tempor ex convallis. Vivamus id condimentum dui. Integer in eros quis sapien rhoncus varius. Aliquam ullamcorper maximus lobortis.",
  },
  {
    tag: "sayings, london, cool",
    title: "Time is money, friend!",
    date: "25/04/2014",
    content: "Duis vitae ligula et massa auctor blandit. Sed erat est, vestibulum et ullamcorper accumsan, accumsan sit amet quam. Aliquam egestas nunc et consequat tempus. Suspendisse vitae est odio. Donec auctor ultrices placerat. Nulla facilisi. Morbi iaculis, purus sit amet vehicula malesuada, ligula felis aliquet nulla, et malesuada ante risus blandit purus. Nulla id velit nec metus ornare fringilla ac vel erat.",
  }
]

get '/' do
  filtered_articles = filter_articles params[:search], articles

  page = (params[:page] || 1).to_i
  search = params[:search]

  articles_per_page = 3
  last_article = page * articles_per_page - 1
  first_article = (page - 1) * articles_per_page
  amount_of_pages = amount_of_pages_calc filtered_articles.length, articles_per_page

  if last_article > filtered_articles.length - 1
    last_article = filtered_articles.length - 1
  end

  page_articles = articles.values_at(first_article..last_article)

  erb :home, :locals => {
                          :search => search,
                          :page => page,
                          :articles => page_articles,
                          :amount_of_pages => amount_of_pages
                        }

end

def amount_of_pages_calc amount_of_articles, articles_per_page
  (amount_of_articles / articles_per_page.to_f).ceil
end

def filter_articles search, articles
  if search
    return articles.select {|article| article[:tag].include? search}
  end

  articles
end


get '/article' do
  id = params[:id].to_i
  erb :article_template, :locals => {
                                     :article => articles[id],
                                     :articles => articles
                                    }
end
