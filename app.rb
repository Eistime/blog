require 'sinatra'

articles = [
  {
    :title => "uno",
    :date => "1/1/1111",
    :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse interdum magna quis nisi sagittis sollicitudin. Phasellus vel urna accumsan libero commodo hendrerit sed et orci. Duis libero tortor, aliquam eu egestas eu, porta et diam. Nunc tincidunt scelerisque mauris, vitae ullamcorper diam luctus vel. Nam suscipit condimentum justo quis congue. Nullam lobortis mattis diam ac viverra. Nunc lobortis augue eu augue pretium, non dapibus purus tristique. Mauris aliquet ante in turpis posuere, sit amet varius leo luctus. Donec nec ipsum urna. Duis fermentum eros pulvinar lorem varius, id fringilla diam convallis. Vivamus eu lacus eros. Aliquam malesuada sem in diam pharetra rutrum. Curabitur sollicitudin eget elit at tempor. Pellentesque ac tellus in nulla viverra accumsan.",
  },
  {
    :title => "dos",
    :date => "2/2/2222",
    :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse interdum magna quis nisi sagittis sollicitudin. Phasellus vel urna accumsan libero commodo hendrerit sed et orci. Duis libero tortor, aliquam eu egestas eu, porta et diam. Nunc tincidunt scelerisque mauris, vitae ullamcorper diam luctus vel. Nam suscipit condimentum justo quis congue. Nullam lobortis mattis diam ac viverra. Nunc lobortis augue eu augue pretium, non dapibus purus tristique. Mauris aliquet ante in turpis posuere, sit amet varius leo luctus. Donec nec ipsum urna. Duis fermentum eros pulvinar lorem varius, id fringilla diam convallis. Vivamus eu lacus eros. Aliquam malesuada sem in diam pharetra rutrum. Curabitur sollicitudin eget elit at tempor. Pellentesque ac tellus in nulla viverra accumsan.",
  },
  {
    :title => "tres",
    :date => "3/3/3333",
    :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse interdum magna quis nisi sagittis sollicitudin. Phasellus vel urna accumsan libero commodo hendrerit sed et orci. Duis libero tortor, aliquam eu egestas eu, porta et diam. Nunc tincidunt scelerisque mauris, vitae ullamcorper diam luctus vel. Nam suscipit condimentum justo quis congue. Nullam lobortis mattis diam ac viverra. Nunc lobortis augue eu augue pretium, non dapibus purus tristique. Mauris aliquet ante in turpis posuere, sit amet varius leo luctus. Donec nec ipsum urna. Duis fermentum eros pulvinar lorem varius, id fringilla diam convallis. Vivamus eu lacus eros. Aliquam malesuada sem in diam pharetra rutrum. Curabitur sollicitudin eget elit at tempor. Pellentesque ac tellus in nulla viverra accumsan.",
  }
]


get '/' do

  erb :home, :locals => {:articles => articles}

end

get '/article' do
  id = params[:id]
  erb :article_template, :locals => {:article => articles[id.to_i]}
end
