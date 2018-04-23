Givet("jeg er på radio-oversigten") do
  visit '/radio/oversigt'
end

Når("jeg tilføjer {string} som en Favoritkanal") do |kanal|
  click_button 'Vælg favoritkanaler'
  within('.channelList') { find('div', text: kanal).click }
  first('button', text: 'GEM').click
end

Så("skal jeg se kun de følgende kanaler:") do |table|
  sleep 1
  all(".channels .logo div").size.should eq table.raw.size
  table.raw.each_with_index do |row, index|
    kanal = row[0]
    element = all(".channels .logo div")[index]
    element[:title].should eq kanal
  end
end
