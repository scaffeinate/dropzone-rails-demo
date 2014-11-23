dropzone-sample
===============

Dropzone + Rails + Carrierwave Demo. Check out the post http://sudharti.github.io/articles/dropzone-rails/

Working [demo](https://shrouded-beyond-2562.herokuapp.com/). [ Heroku + Cloudinary ]

Getting started:
---------------
clone or fork this project

Generate secret_key_base using ```rake secret```

**config/secrets.yml**

```
development:
  secret_key_base: [key from rake secret]
test:
  secret_key_base: [key from rake secret]
production:
  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
```

Run ```rake db:migrate```

Start the server using ```rails server```

Visit [localhost:3000](http://localhost:3000) in your browser.



