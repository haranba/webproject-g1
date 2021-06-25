from flask import Blueprint, render_template, request, session
from utilities.db.db_manager import dbManager
import datetime

# about blueprint definition
oneProduct = Blueprint('oneProduct', __name__,
                  static_folder='static',
                  static_url_path='/oneProduct',
                  template_folder='templates')


# # Routes
# @oneProduct.route('/oneProduct')
# def index():
#     return render_template('OneProductPage.html')


@oneProduct.route('/oneProduct')
def index():
    if 'id' in request.args:
        product_id = request.args['id']
        query_results = dbManager.fetch('''
        SELECT *
        FROM product as p
        WHERE p.product_ID = %s
        ''', (product_id,))
        if query_results:
            return render_template('OneProductPage.html', product=query_results)
    return render_template('OneProductPage.html')


@oneProduct.route('/add_to_cart', methods=['GET', 'POST'])
def add_to_cart():
    if session:

        user_id = session['id']
        product_id = int(request.form['product'])
        quantity = int(request.form['quantity'])

        query_product_results = dbManager.fetch('''
        SELECT *
        FROM product as p
        WHERE p.product_ID = %s
        ''', (product_id,))

        Item_exists = dbManager.fetch('SELECT * FROM cart WHERE customer_ID=%s AND product_ID=%s', (user_id,product_id))
        if Item_exists:
            query_results = dbManager.fetch('''
            SELECT c.customer_ID, c.product_ID, p.product_name, p.price, p.image_URL, c.quantity
            FROM cart as c join product as p 
            on c.product_ID=p.product_ID
            WHERE c.customer_ID = %s
            ''', (user_id,))
            return render_template('OneProductPage.html', product=query_product_results, message="הפריט נוסף בהצלחה!")
        else:
            datetimenow = datetime.datetime.now().replace(microsecond=0)
            dbManager.commit('INSERT INTO cart(customer_ID, order_date,product_ID, quantity) VALUES(%s,%s, %s, %s)',(user_id,datetimenow, product_id, quantity))
            return render_template('OneProductPage.html', product=query_product_results, message="הפריט נוסף בהצלחה!")
    return render_template('cart4.html')
