Ajax File Upload in Rails using Dropzone + Carrierwave
======================================================

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

![alt tag](https://cloud.githubusercontent.com/assets/1825853/5156162/d1e0a5c2-7273-11e4-8a77-b7f15b05fc0f.png)


**Issues:**
If you have any issues with the demo raise issues here [https://github.com/Just-hack/dropzone-sample/issues](https://github.com/Just-hack/dropzone-sample/issues)

License:
--------
This project is licensed under the terms of [MIT License](https://github.com/Just-hack/dropzone-sample/blob/master/LICENSE)
