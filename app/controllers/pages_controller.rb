class PagesController < ApplicationController
# action#home is open to "all" user
#skip_before_action :authenticate_user!, only: :home

def home
  if params.has_key?(:q)
    @cars = Car.where('name LIKE ?', "%#{params[:q]}%")
  else
    @cars = Car.all
  end
end

private

def car_image_select
  pick_a_picture = [
    "https://images.unsplash.com/photo-1511360764098-91482031eaf6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f00548e0353da749a820370a03be8cfc&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1523597193482-bd0e30999c06?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1cddaba8605d3997346e26d39763318e&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1488667732045-ad6830a850cf?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=13edc6e9b67470e16540e4e3db6d8c9d&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1517779894653-4c49f68b4d66?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e90649bd65cb4684565cb6c1a6fa0abf&auto=format&fit=crop&w=1417&q=80",
    "https://images.unsplash.com/photo-1520022974279-a96d1e249eab?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f7530977978ea4687765d7fc632ad560&auto=format&fit=crop&w=1488&q=80",
    "https://images.unsplash.com/photo-1518397387277-7843f7251311?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=66ebca56daa6dfde5f015962a683e01a&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1522325901921-e199d3eaa5ce?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=aec25d37e01cd977fbb900b93b3823b3&auto=format&fit=crop&w=1486&q=80",
    "https://images.unsplash.com/photo-1490559328922-7bf6c9d4efa0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e688dac31f9ace6a4f3e5cf034e4ccf3&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1514999216535-f6b9058f48c3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8abcd2813daedc4665d595c75cf728ca&auto=format&fit=crop&w=1350&q=80",
    "http://cdntdreditorials.azureedge.net/cache/6/4/0/4/9/7/6404971a00c8d2e63f8475b8bfdaa1622f991afa.jpg",
    "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-0.3.5&s=da3df16631fc154abfac92efb7f7a15e&auto=format&fit=crop&w=1350&q=80",
    "http://www.sportfair.it/wp-content/uploads/2017/06/ferrari-250-GTO.jpeg",
    "https://images.unsplash.com/photo-1517153295259-74eb0b416cee?ixlib=rb-0.3.5&s=e4f269070687b22fa7bf2d00c12af7ea&auto=format&fit=crop&w=2250&q=80",
    "https://images.unsplash.com/photo-1511116110918-3382323a9b6d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a1890299caa7f03644e3f07062916716&auto=format&fit=crop&w=1352&q=80",
    "https://images.unsplash.com/photo-1514496069038-a127fcba61cf?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=26466547775d96414bb4955c05aae2de&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1519078313888-5a8068170f8f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b56bf1555807bc0573711cedaa6eddcd&auto=format&fit=crop&w=2458&q=80",
    "https://images.unsplash.com/photo-1519121557795-761aff7d43d3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3b6d383afc8043bebc2079fef5acd750&auto=format&fit=crop&w=2250&q=80",
    "https://images.unsplash.com/photo-1502161254066-6c74afbf07aa?ixlib=rb-0.3.5&s=524108fb9e150667b27dbf1949743c6a&auto=format&fit=crop&w=1351&q=80",
    "https://images.unsplash.com/photo-1512408896570-b241e90003e7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c5ffb69d4106870134b20c1714ea35a8&auto=format&fit=crop&w=2232&q=80",]
end
end
