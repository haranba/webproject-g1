from flask import Flask


###### App setup
app = Flask(__name__)
app.config.from_pyfile('settings.py')

###### Pages
## About
from pages.about.about import about
app.register_blueprint(about)

## cart
from pages.cart.cart import cart
app.register_blueprint(cart)


## category
from pages.category.category import category
app.register_blueprint(category)

## Homepage
from pages.home.homepage import home
app.register_blueprint(home)

## oneProduct
from pages.oneProduct.oneProduct import oneProduct
app.register_blueprint(oneProduct)


## Page error handlers
from pages.page_error_handlers.page_error_handlers import page_error_handlers
app.register_blueprint(page_error_handlers)


## signIn
from pages.signIn.signIn import signIn
app.register_blueprint(signIn)

## signUp
from pages.signUp.signUp import signUp
app.register_blueprint(signUp)

## logout
from pages.logout.logout import logout
app.register_blueprint(logout)