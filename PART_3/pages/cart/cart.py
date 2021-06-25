from flask import Blueprint, render_template, request, session
from utilities.db.db_manager import dbManager
import datetime

# cart blueprint definition
cart = Blueprint('cart', __name__,
                 static_folder='static',
                 static_url_path='/cart',
                 template_folder='templates')

# Routes
@cart.route('/cart')
def index():
    if session:
        user_id = session['id']
        query_results = dbManager.fetch('''
        SELECT c.customer_ID, c.product_ID, p.product_name, p.price, p.image_URL, c.quantity
        FROM cart as c join product as p 
        on c.product_ID=p.product_ID
        WHERE c.customer_ID = %s
        ''', (user_id,))
        if query_results:
            return render_template('cart4.html', products=query_results)
    return render_template('cart4.html')


@cart.route('/Delete_Item', methods=['GET', 'POST'])
def Delete_Item():
    if session:
        user_id = session['id']
        product = request.form['product']
        dbManager.commit('''
        delete from cart where customer_ID=%s and product_ID=%s
        ''', (user_id,product))
        query_results = dbManager.fetch('''
        SELECT c.customer_ID, c.product_ID, p.product_name, p.price, p.image_URL, c.quantity
        FROM cart as c join product as p 
        on c.product_ID=p.product_ID
        WHERE c.customer_ID = %s
        ''', (user_id,))
        if query_results:
            return render_template('cart4.html', products=query_results)
        return render_template('cart4.html')
    return render_template('cart4.html')


@cart.route('/send_order', methods=['GET', 'POST'])
def send_order():
    if session:
        user_id = session['id']
        products = dbManager.fetch('''
        SELECT c.product_ID, c.quantity
        FROM cart as c
        WHERE c.customer_ID = %s
        ''', (user_id,))
        products_list = ""
        datetimenow=datetime.datetime.now().replace(microsecond=0)



        prices=dbManager.fetch('''
        SELECT c.customer_ID, c.product_ID, p.product_name, p.price, p.image_URL, c.quantity
        FROM cart as c join product as p 
        on c.product_ID=p.product_ID
        WHERE c.customer_ID = %s
        ''', (user_id,))

        for p in products:
            id = str(p.product_ID)
            qu = str(p.quantity)
            id_qu = '('+id+','+qu+') ,'
            products_list += str(id_qu)

        total_price = 0
        for p in prices:
            total_price=total_price+p.price

        dbManager.commit('INSERT INTO orders(customer_ID, order_date, products,total_price) '
                         'VALUES(%s,%s, %s,%s)',
                         (user_id, datetimenow, products_list, total_price))
        dbManager.commit('''delete from cart where customer_ID = %s''',(user_id,))
        return render_template('cart4.html', message="תודה שקניתם אצלנו! הטופס נשלח אלינו בהצלחה וניצור איתכם קשר למועד איסוף המשלוח")
    return render_template('home_page.html')