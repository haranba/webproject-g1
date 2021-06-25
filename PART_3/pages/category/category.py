from flask import Blueprint, render_template, request, session
import datetime
from utilities.db.db_manager import dbManager


# about blueprint definition
category = Blueprint('category', __name__,
                  static_folder='static',
                  static_url_path='/category',
                  template_folder='templates')


# Routes
@category.route('/category')
def index():
    if 'id' in request.args:
        category_ID = request.args['id']
        all_products=False
        if category_ID == str(4):
            query_results = dbManager.fetch(''' SELECT * FROM product ''')
            if query_results:
                return render_template('category.html', products = query_results, all_products=True)
        else:
            query_results = dbManager.fetch('''
                       SELECT * 
                       FROM product as p JOIN category as c on p.category_ID = c.catecory_ID
                       WHERE p.category_ID = %s
                       ''', (category_ID,))
            if query_results:
                return render_template('category.html', products = query_results,all_products=False)
    return render_template('category.html')