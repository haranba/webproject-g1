from flask import Blueprint, render_template, redirect, url_for
from utilities.db.db_manager import dbManager

# home blueprint definition
home = Blueprint('home', __name__,
                 static_folder='static',
                 static_url_path='/',
                 template_folder='templates')


# Routes

@home.route('/')
def index():
        query_results = dbManager.fetch('''
        SELECT * FROM product as p
        WHERE p.best_seller = 1
        ''')
        if query_results:
            return render_template('home_page.html', best_sellers = query_results)
        return render_template('home_page.html')

@home.route('/homepage')
@home.route('/home')
def redirect_homepage():
    return redirect(url_for('home_page.index'))