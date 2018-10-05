RSpec.describe Comedian do
  describe 'When a user visits / ' do

    it 'They should see a welcoming dashboard' do
      visit '/'

      expect(page).to have_content('Welcome!')
    end

    it 'They should see a link to /comedians' do
      visit '/'

      have_link 'All Comedians!', href: '/comedians'
    end

    it 'They should see a navbar/header containing relevant links' do
      visit '/'

      within('header') do
        have_link 'Comedians', href: '/comedians'
        have_link 'Home', href: '/'
        have_link "Tim's Comedians", href: '/'
        have_link 'Add Comedian', href: '/comedians/new'
      end
    end

  end

  describe 'When a user visits /comedians' do
    describe 'They should see a list of comedians that' do

      before(:each) do
        @comedian_1 = Comedian.create(
          name:"Lewis Black", age:70,
          city: "Silver Spring, Maryland", image_url:"https://www.datocms-assets.com/4857/1522135089-493595692_1280x720.jpg")
        @special_1a = @comedian_1.specials.create(
          name:"Lewis Black: Stark Raving Black", length:80,
          image_url:"https://m.media-amazon.com/images/M/MV5BMTU0OTc1OTQ1N15BMl5BanBnXkFtZTcwNDc5NTE4Mg@@._V1_UY268_CR2,0,182,268_AL_.jpg"
        )
        @special_1b = @comedian_1.specials.create(
          name:"Lewis Black: In God We Rust", length:59,
          image_url:"https://m.media-amazon.com/images/M/MV5BMjI2MzEyODY3MF5BMl5BanBnXkFtZTgwMDk5NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg"
        )
        @special_1c = @comedian_1.specials.create(
          name:"Lewis Black: Black to the Future", length:49,
          image_url:"https://m.media-amazon.com/images/M/MV5BMDdhMzc3ZTEtMzg4ZC00ZjYzLWE3MzktM2I2ZTA0MGRlNjI5XkEyXkFqcGdeQXVyNjU2MTA3OTY@._V1_UY268_CR22,0,182,268_AL_.jpg"
        )
        @comedian_8 = Comedian.create(
          name:"Iliza Shlesinger", age:34,
          city: "New York, New York", image_url:"https://uproxx.files.wordpress.com/2018/07/iliza-shlesinger-elder-millennial-comedy-column.jpg?quality=95&w=650")
        @special_8a = @comedian_8.specials.create(
          name:'Iliza: Elder Millennial', length:71,
          image_url:"https://m.media-amazon.com/images/M/MV5BNTE2ZmFmYTctOGQyNy00OGNkLTgxYWMtYTVlYzMyMzAyZGRiXkEyXkFqcGdeQXVyNzE3MDkxODc@._V1_UY268_CR4,0,182,268_AL_.jpg"
        )
        @special_8b = @comedian_8.specials.create(
          name:'Iliza Shlesinger: Confirmed Kills', length:77,
          image_url:"https://m.media-amazon.com/images/M/MV5BZGEyYjkwMWItM2EyZS00N2Q1LWIzZmQtZDg5Y2ZmMzdlNTgyXkEyXkFqcGdeQXVyNjgzNzA2NjU@._V1_UX182_CR0,0,182,268_AL_.jpg"
        )
        @special_8c = @comedian_8.specials.create(
          name:'Iliza Shlesinger: Freezing Hot', length:71,
          image_url:"https://m.media-amazon.com/images/M/MV5BNDE4ODU1NjY0OF5BMl5BanBnXkFtZTgwNTY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
        )
      end

      it 'have a name, age and city displayed' do
        visit '/comedians'

        within("#comedian-#{@comedian_1.id}") do
          expect(page).to have_content(@comedian_1.name)
          expect(page).to have_content(@comedian_1.age)
          expect(page).to have_content(@comedian_1.city)
        end
      end

      it "have a list of their specials' names" do
        visit '/comedians'

        within("#comedian-#{@comedian_1.id}") do
          within('.specials') do
            expect(page).to have_content(@special_1a.name)
            expect(page).to have_content(@special_1b.name)
            expect(page).to have_content(@special_1c.name)
          end
        end
      end

      it "have their specials' lengths and thumbnails displayed" do
        visit '/comedians'

        within("#comedian-#{@comedian_1.id}") do
          expect(page).to have_content("Length: #{@special_1a.length} min")
          expect(page).to have_content("Length: #{@special_1b.length} min")
          expect(page).to have_content("Length: #{@special_1c.length} min")

          expect(page).to have_css("img[src='#{@special_1a.image_url}']")
          expect(page).to have_css("img[src='#{@special_1b.image_url}']")
          expect(page).to have_css("img[src='#{@special_1c.image_url}']")
        end
      end

      describe 'When a user queries by age ex: /comedians?age=34 ' do
        describe 'They should see the comedian index with' do

          describe 'Comedians of the age queried' do

            it 'have a name, age and city displayed' do
              visit '/comedians?age=34'

              within("#comedian-#{@comedian_8.id}") do
                expect(page).to have_content(@comedian_8.name)
                expect(page).to have_content(@comedian_8.age)
                expect(page).to have_content(@comedian_8.city)
              end
            end

            it "have a list of their specials' names" do
              visit '/comedians?age=34'

              within("#comedian-#{@comedian_8.id}") do
                within('.specials') do
                  expect(page).to have_content(@special_8a.name)
                  expect(page).to have_content(@special_8b.name)
                  expect(page).to have_content(@special_8c.name)
                end
              end
            end

            it "have their specials' lengths and thumbnails displayed" do
              visit '/comedians?age=34'

              within("#comedian-#{@comedian_8.id}") do
                expect(page).to have_content("Length: #{@special_8a.length} min")
                expect(page).to have_content("Length: #{@special_8b.length} min")
                expect(page).to have_content("Length: #{@special_8c.length} min")

                expect(page).to have_css("img[src='#{@special_8a.image_url}']")
                expect(page).to have_css("img[src='#{@special_8b.image_url}']")
                expect(page).to have_css("img[src='#{@special_8c.image_url}']")
              end
            end
          end

          it "None of the comedians who aren't that age" do
            visit '/comedians?age=34'

            expect(page).to have_no_content(@comedian_1.name)
          end

        end
      end

    end
  end

  describe 'When a user visits /comedians/new ' do
    describe 'They should see a form to add a new comedian' do

      it 'Should have relevant fields and redirect on submission' do
        visit '/comedians/new'
        fill_in 'comedian[name]', with: 'John Doe'
        fill_in 'comedian[age]', with: '38'
        fill_in 'comedian[city]', with: 'Boston, MA'
        fill_in 'comedian[image_url]', with: 'https://modelingpocahontas.files.wordpress.com/2013/11/c1ed5-johnsmith.jpg'
        click_button('Submit')

        expect(page).to have_current_path('/comedians')
      end

    end
  end

end
